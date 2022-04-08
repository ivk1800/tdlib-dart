import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sticker
@immutable
class Sticker extends TdObject {
  const Sticker({
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.isAnimated,
    required this.isMask,
    this.maskPosition,
    required this.outline,
    this.thumbnail,
    required this.sticker,
  });

  /// [setId] The identifier of the sticker set to which the sticker belongs; 0
  /// if none
  final int setId;

  /// [width] Sticker width; as defined by the sender
  final int width;

  /// [height] Sticker height; as defined by the sender
  final int height;

  /// [emoji] Emoji corresponding to the sticker
  final String emoji;

  /// [isAnimated] True, if the sticker is an animated sticker in TGS format
  final bool isAnimated;

  /// [isMask] True, if the sticker is a mask
  final bool isMask;

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  /// [outline] Sticker's outline represented as a list of closed vector paths;
  /// may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// [sticker] File containing the sticker
  final File sticker;

  static const String constructor = 'sticker';

  static Sticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sticker(
      setId: int.tryParse(json['set_id']) ?? 0,
      width: json['width'],
      height: json['height'],
      emoji: json['emoji'],
      isAnimated: json['is_animated'],
      isMask: json['is_mask'],
      maskPosition: MaskPosition.fromJson(json['mask_position']),
      outline: List<ClosedVectorPath>.from((json['outline'] ?? [])
          .map((item) => ClosedVectorPath.fromJson(item))
          .toList()),
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      sticker: File.fromJson(json['sticker'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'set_id': setId,
        'width': width,
        'height': height,
        'emoji': emoji,
        'is_animated': isAnimated,
        'is_mask': isMask,
        'mask_position': maskPosition?.toJson(),
        'outline': outline.map((item) => item.toJson()).toList(),
        'thumbnail': thumbnail?.toJson(),
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
