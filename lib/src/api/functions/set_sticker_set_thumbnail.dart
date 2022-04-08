import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
/// Returns [StickerSet]
@immutable
class SetStickerSetThumbnail extends TdFunction {
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format; pass null to remove the
  /// sticker set thumbnail. Animated thumbnail must be set for animated sticker
  /// sets and only for them
  final InputFile? thumbnail;

  static const String constructor = 'setStickerSetThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'name': name,
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
