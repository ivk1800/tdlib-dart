import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all scheduled messages in a chat. The messages are returned in a
/// reverse chronological order (i.e., in order of decreasing message_id)
/// Returns [Messages]
class GetChatScheduledMessages extends TdFunction {
  GetChatScheduledMessages({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getChatScheduledMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
