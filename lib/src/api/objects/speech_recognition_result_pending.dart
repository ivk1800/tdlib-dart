import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The speech recognition is ongoing
@immutable
class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  const SpeechRecognitionResultPending({
    required this.partialText,
  });

  /// [partialText] Partially recognized text
  final String partialText;

  static const String constructor = 'speechRecognitionResultPending';

  static SpeechRecognitionResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultPending(
      partialText: json['partial_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'partial_text': partialText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
