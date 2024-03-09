import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Return emojis matching the keyword. Supported only if the file database is
/// enabled. Order of results is unspecified
/// Returns [Emojis]
@immutable
class GetKeywordEmojis extends TdFunction {
  const GetKeywordEmojis({
    required this.text,
    required this.inputLanguageCodes,
  });

  /// [text] Text to search for
  final String text;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  static const String constructor = 'getKeywordEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
