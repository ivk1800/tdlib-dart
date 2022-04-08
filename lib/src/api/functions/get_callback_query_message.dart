import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a message with the callback button that
/// originated a callback query; for bots only
/// Returns [Message]
@immutable
class GetCallbackQueryMessage extends TdFunction {
  const GetCallbackQueryMessage({
    required this.chatId,
    required this.messageId,
    required this.callbackQueryId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  static const String constructor = 'getCallbackQueryMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'callback_query_id': callbackQueryId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
