import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sticker is a mask in WEBP format to be placed on photos or videos
@immutable
class StickerTypeMask extends StickerType {
  const StickerTypeMask({
    this.maskPosition,
  });

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  static const String constructor = 'stickerTypeMask';

  static StickerTypeMask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerTypeMask(
      maskPosition: MaskPosition.fromJson(json['mask_position']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
