import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of archived sticker sets
/// Returns [StickerSets]
@immutable
class GetArchivedStickerSets extends TdFunction {
  const GetArchivedStickerSets({
    required this.isMasks,
    required this.offsetStickerSetId,
    required this.limit,
  });

  /// [isMasks] Pass true to return mask stickers sets; pass false to return
  /// ordinary sticker sets
  final bool isMasks;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return
  /// the result
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return; up to 100
  final int limit;

  static const String constructor = 'getArchivedStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_masks': isMasks,
        'offset_sticker_set_id': offsetStickerSetId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
