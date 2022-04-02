import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Searches for emojis by keywords. Supported only if the file database is
/// enabled
/// Returns [Emojis]
class SearchEmojis extends TdFunction {
  SearchEmojis(
      {required this.text,
      required this.exactMatch,
      required this.inputLanguageCodes});

  /// [text] Text to search for
  final String text;

  /// [exactMatch] True, if only emojis, which exactly match text needs to be
  /// returned
  final bool exactMatch;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  static const String CONSTRUCTOR = 'searchEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'exact_match': this.exactMatch,
        'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
