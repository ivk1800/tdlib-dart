import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for installed sticker sets by looking for specified query in
/// their title and name
/// Returns [StickerSets]
@immutable
class SearchInstalledStickerSets extends TdFunction {
  const SearchInstalledStickerSets({
    required this.stickerType,
    required this.query,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to search for
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  static const String constructor = 'searchInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
