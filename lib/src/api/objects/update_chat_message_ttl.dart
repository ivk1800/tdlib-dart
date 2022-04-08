import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message Time To Live setting for a chat was changed
@immutable
class UpdateChatMessageTtl extends Update {
  const UpdateChatMessageTtl({
    required this.chatId,
    required this.messageTtl,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageTtl] New value of message_ttl
  final int messageTtl;

  static const String constructor = 'updateChatMessageTtl';

  static UpdateChatMessageTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageTtl(
      chatId: json['chat_id'],
      messageTtl: json['message_ttl'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ttl': messageTtl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
