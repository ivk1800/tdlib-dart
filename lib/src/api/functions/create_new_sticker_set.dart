import '../tdapi.dart';

/// Creates a new sticker set; for bots only. Returns the newly created
/// sticker set
/// Returns [StickerSet]
class CreateNewStickerSet extends TdFunction {
  CreateNewStickerSet(
      {required this.userId,
      required this.title,
      required this.name,
      required this.isMasks,
      required this.stickers});

  /// [userId] Sticker set owner
  final int userId;

  /// [title] Sticker set title; 1-64 characters
  final String title;

  /// [name] Sticker set name. Can contain only English letters, digits and
  /// underscores. Must end with *"_by_
  final String name;

  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks
  final bool isMasks;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All
  /// stickers must be of the same type
  final List<InputSticker> stickers;

  static const String CONSTRUCTOR = 'createNewStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'title': this.title,
        'name': this.name,
        'is_masks': this.isMasks,
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
