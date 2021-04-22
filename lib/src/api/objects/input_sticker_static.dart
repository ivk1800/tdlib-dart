import '../tdapi.dart';

/// A static sticker in PNG format, which will be converted to WEBP
/// server-side
class InputStickerStatic extends InputSticker {
  InputStickerStatic(
      {required this.sticker, required this.emojis, this.maskPosition});

  /// [sticker] PNG image with the sticker; must be up to 512 KB in size and fit
  /// in a 512x512 square
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  /// [maskPosition] For masks, position where the mask should be placed; may be
  /// null
  final MaskPosition? maskPosition;

  static const String CONSTRUCTOR = 'inputStickerStatic';

  static InputStickerStatic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStickerStatic(
        sticker: InputFile.fromJson(json['sticker'])!,
        emojis: json['emojis'],
        maskPosition: MaskPosition.fromJson(json['mask_position']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        'emojis': this.emojis,
        'mask_position': this.maskPosition?.toJson(),
        '@type': CONSTRUCTOR
      };
}
