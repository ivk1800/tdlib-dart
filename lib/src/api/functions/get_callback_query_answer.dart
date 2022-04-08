import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a callback query to a bot and returns an answer. Returns an error
/// with code 502 if the bot fails to answer the query before the query
/// timeout expires
/// Returns [CallbackQueryAnswer]
@immutable
class GetCallbackQueryAnswer extends TdFunction {
  const GetCallbackQueryAnswer({
    required this.chatId,
    required this.messageId,
    required this.payload,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated
  final int messageId;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'getCallbackQueryAnswer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
