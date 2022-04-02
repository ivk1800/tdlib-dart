import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
/// Returns [StickerSet]
class SetStickerSetThumbnail extends TdFunction {
  SetStickerSetThumbnail(
      {required this.userId, required this.name, this.thumbnail});

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format; pass null to remove the
  /// sticker set thumbnail. Animated thumbnail must be set for animated sticker
  /// sets and only for them
  final InputFile? thumbnail;

  static const String CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'name': this.name,
        'thumbnail': this.thumbnail?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
