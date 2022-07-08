import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an animated representation of an emoji
@immutable
class AnimatedEmoji extends TdObject {
  const AnimatedEmoji({
    required this.sticker,
    required this.fitzpatrickType,
    this.sound,
  });

  /// [sticker] Animated sticker for the emoji
  final Sticker sticker;

  /// [fitzpatrickType] Emoji modifier fitzpatrick type; 0-6; 0 if none
  final int fitzpatrickType;

  /// [sound] File containing the sound to be played when the animated emoji is
  /// clicked; may be null. The sound is encoded with the Opus codec, and stored
  /// inside an OGG container
  final File? sound;

  static const String constructor = 'animatedEmoji';

  static AnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedEmoji(
      sticker: Sticker.fromJson(json['sticker'])!,
      fitzpatrickType: json['fitzpatrick_type'],
      sound: File.fromJson(json['sound']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'fitzpatrick_type': fitzpatrickType,
        'sound': sound?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
