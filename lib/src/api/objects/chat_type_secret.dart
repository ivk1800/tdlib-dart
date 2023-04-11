import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A secret chat with a user
@immutable
class ChatTypeSecret extends ChatType {
  const ChatTypeSecret({
    required this.secretChatId,
    required this.userId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// [userId] User identifier of the secret chat peer
  final int userId;

  static const String constructor = 'chatTypeSecret';

  static ChatTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSecret(
      secretChatId: json['secret_chat_id'] as int,
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret_chat_id': secretChatId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
