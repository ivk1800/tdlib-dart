import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for a sticker set by its name
/// Returns [StickerSet]
@immutable
class SearchStickerSet extends TdFunction {
  const SearchStickerSet({
    required this.name,
    required this.ignoreCache,
  });

  /// [name] Name of the sticker set
  final String name;

  /// [ignoreCache] Pass true to ignore local cache of sticker sets and always
  /// send a network request
  final bool ignoreCache;

  static const String constructor = 'searchStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'ignore_cache': ignoreCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
