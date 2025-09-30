import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The group call is accessible through a message of the type
/// messageGroupCall
@immutable
class InputGroupCallMessage extends InputGroupCall {
  const InputGroupCallMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message of the type messageGroupCall
  final int messageId;

  static const String constructor = 'inputGroupCallMessage';

  static InputGroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputGroupCallMessage(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

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
