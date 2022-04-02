import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns viewers of a recent outgoing message in a basic group or a
/// supergroup chat. For video notes and voice notes only users, opened
/// content of the message, are returned. The method can be called if
/// message.can_get_viewers == true
/// Returns [Users]
class GetMessageViewers extends TdFunction {
  GetMessageViewers({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String CONSTRUCTOR = 'getMessageViewers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
