import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new incoming callback query; for bots only
@immutable
class UpdateNewCallbackQuery extends Update {
  const UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [messageId] Identifier of the message, from which the query originated
  final int messageId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which
  /// the message was sent
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'updateNewCallbackQuery';

  static UpdateNewCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallbackQuery(
      id: int.tryParse(json['id']) ?? 0,
      senderUserId: json['sender_user_id'],
      chatId: json['chat_id'],
      messageId: json['message_id'],
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
        'chat_id': chatId,
        'message_id': messageId,
        'chat_instance': chatInstance,
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
