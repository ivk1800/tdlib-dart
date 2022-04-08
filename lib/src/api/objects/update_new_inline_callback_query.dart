import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new incoming callback query from a message sent via a bot; for bots only
@immutable
class UpdateNewInlineCallbackQuery extends Update {
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [inlineMessageId] Identifier of the inline message, from which the query
  /// originated
  final String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message
  /// was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'updateNewInlineCallbackQuery';

  static UpdateNewInlineCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineCallbackQuery(
      id: int.tryParse(json['id']) ?? 0,
      senderUserId: json['sender_user_id'],
      inlineMessageId: json['inline_message_id'],
      chatInstance: int.tryParse(json['chat_instance']) ?? 0,
      payload: CallbackQueryPayload.fromJson(json['payload'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_user_id': senderUserId,
        'inline_message_id': inlineMessageId,
        'chat_instance': chatInstance,
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
