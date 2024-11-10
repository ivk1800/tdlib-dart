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
    required this.limit,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [emojis] Space-separated list of emojis to search for; must be non-empty
  final String emojis;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  static const String constructor = 'searchStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'emojis': emojis,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
