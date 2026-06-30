import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sebartv/data/repositories/chat_repository.dart';

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  return ChatRepository();
});

final movieChatStreamProvider = StreamProvider.family<List<ChatMessage>, int>((ref, movieId) {
  final repository = ref.watch(chatRepositoryProvider);
  return repository.getMovieChatStream(movieId);
});
