import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for stickers from public sticker sets that correspond to any of
/// the given emoji
/// Returns [Stickers]
@immutable
class SearchStickers extends TdFunction {
  const SearchStickers({
    required this.stickerType,
    required this.emojis,
    required this.query,
    required this.inputLanguageCodes,
    required this.offset,
    required this.limit,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [emojis] Space-separated list of emojis to search for
  final String emojis;

  /// [query] Query to search for; may be empty to search for emoji only
  final String query;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  /// [offset] The offset from which to return the stickers; must be
  /// non-negative
  final int offset;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  static const String constructor = 'searchStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_type': stickerType.toJson(),
    'emojis': emojis,
    'query': query,
    'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
    'offset': offset,
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
