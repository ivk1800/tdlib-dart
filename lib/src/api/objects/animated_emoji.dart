import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an animated or custom representation of an emoji
@immutable
class AnimatedEmoji extends TdObject {
  const AnimatedEmoji({
    this.sticker,
    required this.stickerWidth,
    required this.stickerHeight,
    required this.fitzpatrickType,
    this.sound,
  });

  /// [sticker] Sticker for the emoji; may be null if yet unknown for a custom
  /// emoji. If the sticker is a custom emoji, it can have arbitrary format
  /// different from stickerFormatTgs
  final Sticker? sticker;

  /// [stickerWidth] Expected width of the sticker, which can be used if the
  /// sticker is null
  final int stickerWidth;

  /// [stickerHeight] Expected height of the sticker, which can be used if the
  /// sticker is null
  final int stickerHeight;

  /// [fitzpatrickType] Emoji modifier fitzpatrick type; 0-6; 0 if none
  final int fitzpatrickType;

  /// [sound] File containing the sound to be played when the sticker is
  /// clicked; may be null. The sound is encoded with the Opus codec, and stored
  /// inside an OGG container
  final File? sound;

  static const String constructor = 'animatedEmoji';

  static AnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedEmoji(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      stickerWidth: json['sticker_width'] as int,
      stickerHeight: json['sticker_height'] as int,
      fitzpatrickType: json['fitzpatrick_type'] as int,
      sound: File.fromJson(json['sound'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker?.toJson(),
        'sticker_width': stickerWidth,
        'sticker_height': stickerHeight,
        'fitzpatrick_type': fitzpatrickType,
        'sound': sound?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
