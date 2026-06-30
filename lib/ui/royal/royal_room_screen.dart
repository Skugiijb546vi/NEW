import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sebartv/providers/movie_provider.dart';

class RoyalRoomScreen extends ConsumerStatefulWidget {
  final int movieId;
  final String roomId;
  final bool isAdmin;

  const RoyalRoomScreen({
    super.key,
    required this.movieId,
    required this.roomId,
    this.isAdmin = false,
  });

  @override
  ConsumerState<RoyalRoomScreen> createState() => _RoyalRoomScreenState();
}

class _RoyalRoomScreenState extends ConsumerState<RoyalRoomScreen> {
  late final Player _player;
  late final VideoController _controller;
  late final RtcEngine _agoraEngine;
  
  bool _isAdminPresent = true; // For animation
  bool _isDarkScreen = false;
  
  final String appId = "541a8a4ca0ca44869c8cf8e108b50db7"; // From Android JNI

  @override
  void initState() {
    super.initState();
    _player = Player();
    _controller = VideoController(_player);
    _initAgora();
    _initVideoSync();
  }

  Future<void> _initVideoSync() async {
    final movie = await ref.read(movieRepositoryProvider).getMovieDetail(widget.movieId, 'movies1');
    if (movie != null) {
      String videoUrl = movie.sources?.first.url ?? movie.url;
      if (videoUrl.isNotEmpty) {
        await _player.open(Media(videoUrl), play: false);
      }
    }

    final db = FirebaseDatabase.instance.ref().child('royal_rooms').child(widget.roomId).child('videoState');

    if (widget.isAdmin) {
      _player.stream.playing.listen((isPlaying) {
        db.update({'isPlaying': isPlaying, 'timestamp': DateTime.now().millisecondsSinceEpoch});
      });
      _player.stream.position.listen((position) {
        // Debounce or send periodic updates for sync
        if (position.inSeconds % 5 == 0) {
          db.update({'position': position.inMilliseconds, 'timestamp': DateTime.now().millisecondsSinceEpoch});
        }
      });
    } else {
      db.onValue.listen((event) {
        final data = event.snapshot.value as Map<dynamic, dynamic>?;
        if (data != null) {
          final isPlaying = data['isPlaying'] as bool? ?? false;
          final position = data['position'] as int? ?? 0;
          
          if (isPlaying && !_player.state.playing) {
            _player.play();
          } else if (!isPlaying && _player.state.playing) {
            _player.pause();
          }

          final currentPos = _player.state.position.inMilliseconds;
          if ((currentPos - position).abs() > 2000) { // 2 seconds drift
            _player.seek(Duration(milliseconds: position));
          }
        }
      });
    }
  }

  Future<void> _initAgora() async {
    _agoraEngine = createAgoraRtcEngine();
    await _agoraEngine.initialize(RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _agoraEngine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          debugPrint("Joined Agora channel");
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("User joined: $remoteUid");
        },
        onUserOffline: (RtcConnection connection, int remoteUid, UserOfflineReasonType reason) {
          debugPrint("User offline: $remoteUid");
        },
      ),
    );

    await _agoraEngine.setClientRole(role: widget.isAdmin ? ClientRoleType.clientRoleBroadcaster : ClientRoleType.clientRoleAudience);
    await _agoraEngine.enableAudio();
    await _agoraEngine.joinChannel(
      token: '', // Update if token is needed
      channelId: widget.roomId,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  void _triggerAdminReturnAnimation() async {
    setState(() {
      _isDarkScreen = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _isDarkScreen = false;
      });
    }
  }

  @override
  void dispose() {
    _player.dispose();
    _agoraEngine.leaveChannel();
    _agoraEngine.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isDarkScreen) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
           // Special Admin return animation placeholder
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('کۆشکی سووری شاهانە', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Video Player Area
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Video(
              controller: _controller,
              controls: widget.isAdmin ? AdaptiveVideoControls : NoVideoControls,
            ),
          ),
          
          // Royal Throne (Admin UI)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red[800]!, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: const Border(bottom: BorderSide(color: Colors.amber, width: 2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.chair_alt, color: Colors.amber, size: 40),
                const SizedBox(width: 16),
                Column(
                  children: [
                    const Text('پاشای ژوور (ئەدمین)', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 18)),
                    if (widget.isAdmin)
                      const Text('تۆ سەرپەرشتیاری فیلمەکەی', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ],
            ),
          ),

          // Guest List & Voice Chat Controls
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Text('میوانەکان (Voice Chat)', style: TextStyle(color: Colors.white54)),
              ),
            ),
          ),

          // Moderation Controls (Only for Admin)
          if (widget.isAdmin)
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(icon: const Icon(Icons.mic_off, color: Colors.white), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.block, color: Colors.red), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.output, color: Colors.orange), onPressed: () {}),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
