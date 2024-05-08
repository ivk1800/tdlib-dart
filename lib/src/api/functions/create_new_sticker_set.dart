import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new sticker set. Returns the newly created sticker set
/// Returns [StickerSet]
@immutable
class CreateNewStickerSet extends TdFunction {
  const CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.stickerType,
    required this.needsRepainting,
    required this.stickers,
    required this.source,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [title] Sticker set title; 1-64 characters
  final String title;

  /// [name] Sticker set name. Can contain only English letters, digits and
  /// underscores. Must end with *"_by_ If empty, then the name returned by
  /// getSuggestedStickerSetName will be used automatically
  final String name;

  /// [stickerType] Type of the stickers in the set
  final StickerType stickerType;

  /// [needsRepainting] Pass true if stickers in the sticker set must be
  /// repainted; for custom emoji sticker sets only
  final bool needsRepainting;

  /// [stickers] List of stickers to be added to the set; 1-200 stickers for
  /// custom emoji sticker sets, and 1-120 stickers otherwise. For TGS stickers,
  /// uploadStickerFile must be used before the sticker is shown
  final List<InputSticker> stickers;

  /// [source] Source of the sticker set; may be empty if unknown
  final String source;

  static const String constructor = 'createNewStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'title': title,
        'name': name,
        'sticker_type': stickerType.toJson(),
        'needs_repainting': needsRepainting,
        'stickers': stickers.map((item) => item.toJson()).toList(),
        'source': source,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
