import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for installed sticker sets by looking for specified query in
/// their title and name
/// Returns [StickerSets]
@immutable
class SearchInstalledStickerSets extends TdFunction {
  const SearchInstalledStickerSets({
    required this.isMasks,
    required this.query,
    required this.limit,
  });

  /// [isMasks] Pass true to return mask sticker sets; pass false to return
  /// ordinary sticker sets
  final bool isMasks;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  static const String constructor = 'searchInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_masks': isMasks,
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
