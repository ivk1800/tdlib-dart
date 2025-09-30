import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sticker
@immutable
class Sticker extends TdObject {
  const Sticker({
    required this.id,
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.format,
    required this.fullType,
    this.thumbnail,
    required this.sticker,
  });

  /// [id] Unique sticker identifier within the set; 0 if none
  final int id;

  /// [setId] Identifier of the sticker set to which the sticker belongs; 0 if
  /// none
  final int setId;

  /// [width] Sticker width; as defined by the sender
  final int width;

  /// [height] Sticker height; as defined by the sender
  final int height;

  /// [emoji] Emoji corresponding to the sticker
  final String emoji;

  /// [format] Sticker format
  final StickerFormat format;

  /// [fullType] Sticker's full type
  final StickerFullType fullType;

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
      id: int.tryParse(json['id']) ?? 0,
      setId: int.tryParse(json['set_id']) ?? 0,
      width: json['width'] as int,
      height: json['height'] as int,
      emoji: json['emoji'] as String,
      format: StickerFormat.fromJson(json['format'] as Map<String, dynamic>?)!,
      fullType: StickerFullType.fromJson(
        json['full_type'] as Map<String, dynamic>?,
      )!,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      sticker: File.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'set_id': setId.toString(),
    'width': width,
    'height': height,
    'emoji': emoji,
    'format': format.toJson(),
    'full_type': fullType.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'sticker': sticker.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
