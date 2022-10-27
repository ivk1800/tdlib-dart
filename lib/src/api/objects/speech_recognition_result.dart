import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of speech recognition in a voice note
@immutable
abstract class SpeechRecognitionResult extends TdObject {
  const SpeechRecognitionResult();

  static const String constructor = 'speechRecognitionResult';

  /// Inherited by:
  /// [SpeechRecognitionResultError]
  /// [SpeechRecognitionResultPending]
  /// [SpeechRecognitionResultText]
  static SpeechRecognitionResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SpeechRecognitionResultError.constructor:
        return SpeechRecognitionResultError.fromJson(json);
      case SpeechRecognitionResultPending.constructor:
        return SpeechRecognitionResultPending.fromJson(json);
      case SpeechRecognitionResultText.constructor:
        return SpeechRecognitionResultText.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
