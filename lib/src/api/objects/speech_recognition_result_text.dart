import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The speech recognition successfully finished
@immutable
class SpeechRecognitionResultText extends SpeechRecognitionResult {
  const SpeechRecognitionResultText({
    required this.text,
  });

  /// [text] Recognized text
  final String text;

  static const String constructor = 'speechRecognitionResultText';

  static SpeechRecognitionResultText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultText(
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
