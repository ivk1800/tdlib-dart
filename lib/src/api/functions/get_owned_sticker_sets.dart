import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns sticker sets owned by the current user
/// Returns [StickerSets]
@immutable
class GetOwnedStickerSets extends TdFunction {
  const GetOwnedStickerSets({
    required this.offsetStickerSetId,
    required this.limit,
  });

  /// [offsetStickerSetId] Identifier of the sticker set from which to return
  /// owned sticker sets; use 0 to get results from the beginning
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to be returned; must be
  /// positive and can't be greater than 100. For optimal performance, the
  /// number of returned objects is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getOwnedStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'offset_sticker_set_id': offsetStickerSetId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
