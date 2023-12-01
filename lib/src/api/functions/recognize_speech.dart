import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Recognizes speech in a video note or a voice note message. The message
/// must be successfully sent and must not be scheduled
/// Returns [Ok]
@immutable
class RecognizeSpeech extends TdFunction {
  const RecognizeSpeech({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'recognizeSpeech';

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
