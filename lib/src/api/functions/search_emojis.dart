import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for emojis by keywords. Supported only if the file database is
/// enabled
/// Returns [Emojis]
@immutable
class SearchEmojis extends TdFunction {
  const SearchEmojis({
    required this.text,
    required this.exactMatch,
    required this.inputLanguageCodes,
  });

  /// [text] Text to search for
  final String text;

  /// [exactMatch] True, if only emojis, which exactly match text needs to be
  /// returned
  final bool exactMatch;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  static const String constructor = 'searchEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'exact_match': exactMatch,
        'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
