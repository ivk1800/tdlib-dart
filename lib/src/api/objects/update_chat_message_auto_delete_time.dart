import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message auto-delete or self-destruct timer setting for a chat was
/// changed
@immutable
class UpdateChatMessageAutoDeleteTime extends Update {
  const UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageAutoDeleteTime] New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  static const String constructor = 'updateChatMessageAutoDeleteTime';

  static UpdateChatMessageAutoDeleteTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageAutoDeleteTime(
      chatId: json['chat_id'],
      messageAutoDeleteTime: json['message_auto_delete_time'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_auto_delete_time': messageAutoDeleteTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
