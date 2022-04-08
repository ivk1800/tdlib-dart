import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A static sticker in PNG format, which will be converted to WEBP
/// server-side
@immutable
class InputStickerStatic extends InputSticker {
  const InputStickerStatic({
    required this.sticker,
    required this.emojis,
    this.maskPosition,
  });

  /// [sticker] PNG image with the sticker; must be up to 512 KB in size and fit
  /// in a 512x512 square
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  /// [maskPosition] For masks, position where the mask is placed; pass null if
  /// unspecified
  final MaskPosition? maskPosition;

  static const String constructor = 'inputStickerStatic';

  static InputStickerStatic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStickerStatic(
      sticker: InputFile.fromJson(json['sticker'])!,
      emojis: json['emojis'],
      maskPosition: MaskPosition.fromJson(json['mask_position']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'emojis': emojis,
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
