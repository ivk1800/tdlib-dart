import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat's has_scheduled_messages field has changed
@immutable
class UpdateChatHasScheduledMessages extends Update {
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  static const String constructor = 'updateChatHasScheduledMessages';

  static UpdateChatHasScheduledMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasScheduledMessages(
      chatId: json['chat_id'],
      hasScheduledMessages: json['has_scheduled_messages'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'has_scheduled_messages': hasScheduledMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
