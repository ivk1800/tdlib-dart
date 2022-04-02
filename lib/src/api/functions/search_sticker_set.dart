import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Searches for a sticker set by its name
/// Returns [StickerSet]
class SearchStickerSet extends TdFunction {
  SearchStickerSet({required this.name});

  /// [name] Name of the sticker set
  final String name;

  static const String CONSTRUCTOR = 'searchStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
