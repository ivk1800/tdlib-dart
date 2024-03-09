import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for sticker sets by looking for specified query in their title
/// and name. Excludes installed sticker sets from the results
/// Returns [StickerSets]
@immutable
class SearchStickerSets extends TdFunction {
  const SearchStickerSets({
    required this.stickerType,
    required this.query,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  static const String constructor = 'searchStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
