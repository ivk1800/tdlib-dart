import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports reactions set on a message to the Telegram moderators. Reactions
/// on a message can be reported only if
/// messageProperties.can_report_reactions
/// Returns [Ok]
@immutable
class ReportMessageReactions extends TdFunction {
  const ReportMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.senderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [senderId] Identifier of the sender, which added the reaction
  final MessageSender senderId;

  static const String constructor = 'reportMessageReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'sender_id': senderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
