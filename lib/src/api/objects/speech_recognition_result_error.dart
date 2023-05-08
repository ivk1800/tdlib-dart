import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The speech recognition failed
@immutable
class SpeechRecognitionResultError extends SpeechRecognitionResult {
  const SpeechRecognitionResultError({
    required this.error,
  });

  /// [error] Recognition error
  final TdError error;

  static const String constructor = 'speechRecognitionResultError';

  static SpeechRecognitionResultError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultError(
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
