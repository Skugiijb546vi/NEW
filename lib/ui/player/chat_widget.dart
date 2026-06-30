import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sebartv/providers/chat_provider.dart';

class ChatWidget extends ConsumerStatefulWidget {
  final int movieId;

  const ChatWidget({super.key, required this.movieId});

  @override
  ConsumerState<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends ConsumerState<ChatWidget> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      ref.read(chatRepositoryProvider).sendMovieChatMessage(widget.movieId, text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatAsync = ref.watch(movieChatStreamProvider(widget.movieId));

    return Container(
      color: Colors.black54,
      child: Column(
        children: [
          Expanded(
            child: chatAsync.when(
              data: (messages) {
                return ListView.builder(
                  reverse: false,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.blueAccent,
                            backgroundImage: msg.profilePic != null ? NetworkImage(msg.profilePic!) : null,
                            child: msg.profilePic == null
                                ? Text(msg.senderName[0], style: const TextStyle(fontSize: 12, color: Colors.white))
                                : null,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(msg.senderName, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white70, fontSize: 12)),
                                Text(msg.text, style: const TextStyle(color: Colors.white, fontSize: 14)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('هەڵە: $error')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'نامەیەک بنووسە...',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blueAccent),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
