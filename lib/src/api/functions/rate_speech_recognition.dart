import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Rates recognized speech in a video note or a voice note message
/// Returns [Ok]
@immutable
class RateSpeechRecognition extends TdFunction {
  const RateSpeechRecognition({
    required this.chatId,
    required this.messageId,
    required this.isGood,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isGood] Pass true if the speech recognition is good
  final bool isGood;

  static const String constructor = 'rateSpeechRecognition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_good': isGood,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
