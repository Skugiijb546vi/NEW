import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:sebartv/providers/movie_provider.dart';
import 'package:sebartv/ui/player/chat_widget.dart';
import 'package:sebartv/domain/models/models.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  final int movieId;
  final String section;

  const VideoPlayerScreen({super.key, required this.movieId, required this.section});

  @override
  ConsumerState<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen> {
  late final Player player;
  late final VideoController controller;
  bool isChatVisible = true;

  @override
  void initState() {
    super.initState();
    player = Player();
    controller = VideoController(player);
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    final movie = await ref.read(movieRepositoryProvider).getMovieDetail(widget.movieId, widget.section);
    if (movie != null) {
      String videoUrl = '';
      if (movie.sources != null && movie.sources!.isNotEmpty) {
        videoUrl = movie.sources!.first.url;
      } else if (movie.url.isNotEmpty) {
        videoUrl = movie.url;
      }

      if (videoUrl.isNotEmpty) {
        await player.open(Media(videoUrl));
        // Note: For dual audio, if it's a separate URL we could load it here,
        // or if it's an embedded track in the M3U8/MP4, media_kit handles track selection internally.
      }
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Video Player
            Center(
              child: Video(
                controller: controller,
                controls: AdaptiveVideoControls,
              ),
            ),
            
            // Chat Overlay
            if (isChatVisible)
              Positioned(
                right: 0,
                bottom: 60, // Above video controls
                top: 50,
                width: 300,
                child: ChatWidget(movieId: widget.movieId),
              ),

            // Top Bar
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  IconButton(
                    icon: Icon(
                      isChatVisible ? Icons.chat_bubble : Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isChatVisible = !isChatVisible;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
