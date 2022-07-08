import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns reactions, which can be added to a message. The list can change
/// after updateReactions, updateChatAvailableReactions for the chat, or
/// updateMessageInteractionInfo for the message. The method will return
/// Premium reactions, even the current user has no Premium subscription
/// Returns [AvailableReactions]
@immutable
class GetMessageAvailableReactions extends TdFunction {
  const GetMessageAvailableReactions({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'getMessageAvailableReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
