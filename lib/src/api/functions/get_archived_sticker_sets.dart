import '../tdapi.dart';

/// Returns a list of archived sticker sets
/// Returns [StickerSets]
class GetArchivedStickerSets extends TdFunction {
  GetArchivedStickerSets(
      {required this.isMasks,
      required this.offsetStickerSetId,
      required this.limit});

  /// [isMasks] Pass true to return mask stickers sets; pass false to return
  /// ordinary sticker sets
  final bool isMasks;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return
  /// the result
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return; up to 100
  final int limit;

  static const String CONSTRUCTOR = 'getArchivedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_masks': this.isMasks,
        'offset_sticker_set_id': this.offsetStickerSetId,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
