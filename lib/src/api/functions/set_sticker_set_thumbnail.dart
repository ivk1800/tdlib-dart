import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets a sticker set thumbnail
/// Returns [Ok]
@immutable
class SetStickerSetThumbnail extends TdFunction {
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
    this.format,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [thumbnail] Thumbnail to set; pass null to remove the sticker set
  /// thumbnail
  final InputFile? thumbnail;

  /// [format] Format of the thumbnail; pass null if thumbnail is removed
  final StickerFormat? format;

  static const String constructor = 'setStickerSetThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'name': name,
        'thumbnail': thumbnail?.toJson(),
        'format': format?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
