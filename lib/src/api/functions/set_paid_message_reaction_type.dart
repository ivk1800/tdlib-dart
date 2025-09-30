import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes type of paid message reaction of the current user on a message.
/// The message must have paid reaction added by the current user
/// Returns [Ok]
@immutable
class SetPaidMessageReactionType extends TdFunction {
  const SetPaidMessageReactionType({
    required this.chatId,
    required this.messageId,
    required this.type,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [type] New type of the paid reaction
  final PaidReactionType type;

  static const String constructor = 'setPaidMessageReactionType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'type': type.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
