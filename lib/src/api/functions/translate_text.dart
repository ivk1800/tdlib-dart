import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Translates a text to the given language. Returns a 404 error if the
/// translation can't be performed
/// Returns [Text]
@immutable
class TranslateText extends TdFunction {
  const TranslateText({
    required this.text,
    required this.fromLanguageCode,
    required this.toLanguageCode,
  });

  /// [text] Text to translate
  final String text;

  /// [fromLanguageCode] A two-letter ISO 639-1 language code of the language
  /// from which the message is translated. If empty, the language will be
  /// detected automatically
  final String fromLanguageCode;

  /// [toLanguageCode] A two-letter ISO 639-1 language code of the language to
  /// which the message is translated
  final String toLanguageCode;

  static const String constructor = 'translateText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'from_language_code': fromLanguageCode,
        'to_language_code': toLanguageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
