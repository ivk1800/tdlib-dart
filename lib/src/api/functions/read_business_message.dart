import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reads a message on behalf of a business account; for bots only
/// Returns [Ok]
@immutable
class ReadBusinessMessage extends TdFunction {
  const ReadBusinessMessage({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
  });

  /// [businessConnectionId] Unique identifier of business connection through
  /// which the message was received
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'readBusinessMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
