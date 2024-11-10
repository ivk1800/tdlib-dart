import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Pins or unpins a message sent on behalf of a business account; for bots
/// only
/// Returns [Ok]
@immutable
class SetBusinessMessageIsPinned extends TdFunction {
  const SetBusinessMessageIsPinned({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which the message was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isPinned] Pass true to pin the message, pass false to unpin it
  final bool isPinned;

  static const String constructor = 'setBusinessMessageIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'message_id': messageId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
