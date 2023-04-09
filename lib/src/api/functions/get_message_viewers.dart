import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns viewers of a recent outgoing message in a basic group or a
/// supergroup chat. For video notes and voice notes only users, opened
/// content of the message, are returned. The method can be called if
/// message.can_get_viewers == true
/// Returns [MessageViewers]
@immutable
class GetMessageViewers extends TdFunction {
  const GetMessageViewers({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'getMessageViewers';

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
