import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for a sticker set by its name
/// Returns [StickerSet]
@immutable
class SearchStickerSet extends TdFunction {
  const SearchStickerSet({
    required this.name,
  });

  /// [name] Name of the sticker set
  final String name;

  static const String constructor = 'searchStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
