import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes chosen reaction for a message
/// Returns [Ok]
@immutable
class SetMessageReaction extends TdFunction {
  const SetMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reaction,
    required this.isBig,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reaction] Text representation of the new chosen reaction. Can be an empty
  /// string or the currently chosen non-big reaction to remove the reaction
  final String reaction;

  /// [isBig] Pass true if the reaction is added with a big animation
  final bool isBig;

  static const String constructor = 'setMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction': reaction,
        'is_big': isBig,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
