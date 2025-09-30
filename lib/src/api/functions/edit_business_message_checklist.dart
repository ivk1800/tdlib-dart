import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the content of a checklist in a message sent on behalf of a business
/// account; for bots only
/// Returns [BusinessMessage]
@immutable
class EditBusinessMessageChecklist extends TdFunction {
  const EditBusinessMessageChecklist({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.checklist,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [checklist] The new checklist. If some tasks were completed, this
  /// information will be kept
  final InputChecklist checklist;

  static const String constructor = 'editBusinessMessageChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup?.toJson(),
    'checklist': checklist.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
