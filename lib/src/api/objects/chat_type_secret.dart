import '../tdapi.dart';

/// A secret chat with a user
class ChatTypeSecret extends ChatType {
  ChatTypeSecret({required this.secretChatId, required this.userId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// [userId] User identifier of the secret chat peer
  final int userId;

  static const String CONSTRUCTOR = 'chatTypeSecret';

  static ChatTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSecret(
        secretChatId: json['secret_chat_id'], userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'secret_chat_id': this.secretChatId,
        'user_id': this.userId,
        '@type': CONSTRUCTOR
      };
}
