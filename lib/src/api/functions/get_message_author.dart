import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about actual author of a message sent on behalf of a
/// channel. The method can be called if messageProperties.can_get_author ==
/// true
/// Returns [User]
@immutable
class GetMessageAuthor extends TdFunction {
  const GetMessageAuthor({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'getMessageAuthor';

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
