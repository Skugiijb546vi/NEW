import 'package:firebase_database/firebase_database.dart';

class ChatMessage {
  final String id;
  final String text;
  final String senderId;
  final String senderName;
  final int timestamp;
  final String? profilePic;

  ChatMessage({
    required this.id,
    required this.text,
    required this.senderId,
    required this.senderName,
    required this.timestamp,
    this.profilePic,
  });

  factory ChatMessage.fromMap(String id, Map<dynamic, dynamic> map) {
    return ChatMessage(
      id: id,
      text: map['text']?.toString() ?? '',
      senderId: map['senderId']?.toString() ?? 'unknown',
      senderName: map['senderName']?.toString() ?? 'میوان',
      timestamp: map['timestamp'] as int? ?? DateTime.now().millisecondsSinceEpoch,
      profilePic: map['profilePic']?.toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'senderId': senderId,
      'senderName': senderName,
      'timestamp': timestamp,
      'profilePic': profilePic,
    };
  }
}

class ChatRepository {
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  Stream<List<ChatMessage>> getMovieChatStream(int movieId) {
    return _database.ref().child('movie_comments').child(movieId.toString())
        .orderByChild('timestamp')
        .limitToLast(50)
        .onValue
        .map((event) {
          final data = event.snapshot.value as Map<dynamic, dynamic>?;
          if (data == null) return [];
          
          List<ChatMessage> messages = [];
          data.forEach((key, value) {
            messages.add(ChatMessage.fromMap(key.toString(), value as Map<dynamic, dynamic>));
          });
          
          messages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
          return messages;
        });
  }

  Future<void> sendMovieChatMessage(int movieId, String text, {String senderName = 'میوان'}) async {
    final ref = _database.ref().child('movie_comments').child(movieId.toString()).push();
    final message = ChatMessage(
      id: ref.key ?? '',
      text: text,
      senderId: 'local_user', // In a real app, this comes from FirebaseAuth
      senderName: senderName,
      timestamp: DateTime.now().millisecondsSinceEpoch,
    );
    await ref.set(message.toMap());
  }
}
