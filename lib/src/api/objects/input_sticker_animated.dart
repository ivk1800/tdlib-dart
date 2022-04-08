import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animated sticker in TGS format
@immutable
class InputStickerAnimated extends InputSticker {
  const InputStickerAnimated({
    required this.sticker,
    required this.emojis,
  });

  /// [sticker] File with the animated sticker. Only local or uploaded within a
  /// week files are supported. See
  /// https://core.telegram.org/animated_stickers#technical-requirements for
  /// technical requirements
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  static const String constructor = 'inputStickerAnimated';

  static InputStickerAnimated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStickerAnimated(
      sticker: InputFile.fromJson(json['sticker'])!,
      emojis: json['emojis'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'emojis': emojis,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
