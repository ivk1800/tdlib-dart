import '../tdapi.dart';

/// Describes an animated representation of an emoji
class AnimatedEmoji extends TdObject {
  AnimatedEmoji(
      {required this.sticker, required this.colorReplacements, this.sound});

  /// [sticker] Animated sticker for the emoji
  final Sticker sticker;

  /// [colorReplacements] List of colors to be replaced while the sticker is
  /// rendered
  final List<ColorReplacement> colorReplacements;

  /// [sound] File containing the sound to be played when the animated emoji is
  /// clicked if any; may be null. The sound is encoded with the Opus codec, and
  /// stored inside an OGG container
  final File? sound;

  static const String CONSTRUCTOR = 'animatedEmoji';

  static AnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedEmoji(
        sticker: Sticker.fromJson(json['sticker'])!,
        colorReplacements: List<ColorReplacement>.from(
            (json['color_replacements'] ?? [])
                .map((item) => ColorReplacement.fromJson(item))
                .toList()),
        sound: File.fromJson(json['sound']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        'color_replacements':
            colorReplacements.map((item) => item.toJson()).toList(),
        'sound': this.sound?.toJson(),
        '@type': CONSTRUCTOR
      };
}
