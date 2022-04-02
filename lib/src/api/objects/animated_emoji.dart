import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes an animated representation of an emoji
class AnimatedEmoji extends TdObject {
  AnimatedEmoji(
      {required this.sticker, required this.fitzpatrickType, this.sound});

  /// [sticker] Animated sticker for the emoji
  final Sticker sticker;

  /// [fitzpatrickType] Emoji modifier fitzpatrick type; 0-6; 0 if none
  final int fitzpatrickType;

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
        fitzpatrickType: json['fitzpatrick_type'],
        sound: File.fromJson(json['sound']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        'fitzpatrick_type': this.fitzpatrickType,
        'sound': this.sound?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
