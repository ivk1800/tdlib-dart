import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets a sticker set thumbnail; for bots only
/// Returns [Ok]
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

  /// [thumbnail] Thumbnail to set in PNG, TGS, or WEBM format; pass null to
  /// remove the sticker set thumbnail. Thumbnail format must match the format
  /// of stickers in the set
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
