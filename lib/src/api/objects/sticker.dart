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
    required this.type,
    required this.outline,
    this.thumbnail,
    this.premiumAnimation,
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

  /// [type] Sticker type
  final StickerType type;

  /// [outline] Sticker's outline represented as a list of closed vector paths;
  /// may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// [premiumAnimation] Premium animation of the sticker; may be null. If
  /// present, only Premium users can send the sticker
  final File? premiumAnimation;

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
      type: StickerType.fromJson(json['type'])!,
      outline: List<ClosedVectorPath>.from((json['outline'] ?? [])
          .map((item) => ClosedVectorPath.fromJson(item))
          .toList()),
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      premiumAnimation: File.fromJson(json['premium_animation']),
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
        'type': type.toJson(),
        'outline': outline.map((item) => item.toJson()).toList(),
        'thumbnail': thumbnail?.toJson(),
        'premium_animation': premiumAnimation?.toJson(),
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
