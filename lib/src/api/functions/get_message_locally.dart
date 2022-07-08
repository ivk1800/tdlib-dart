import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a message, if it is available without sending
/// network request. This is an offline request
/// Returns [Message]
@immutable
class GetMessageLocally extends TdFunction {
  const GetMessageLocally({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
  final int messageId;

  static const String constructor = 'getMessageLocally';

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
