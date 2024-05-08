import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a notification about user activity in a chat
/// Returns [Ok]
@immutable
class SendChatAction extends TdFunction {
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    this.businessConnectionId,
    this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the
  /// action was performed
  final int messageThreadId;

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [action] The action description; pass null to cancel the currently active
  /// action
  final ChatAction? action;

  static const String constructor = 'sendChatAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'business_connection_id': businessConnectionId,
        'action': action?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
