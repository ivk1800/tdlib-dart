import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker to be added to a sticker set
@immutable
class InputSticker extends TdObject {
  const InputSticker({
    required this.sticker,
    required this.emojis,
    required this.format,
    this.maskPosition,
  });

  /// [sticker] File with the sticker; must fit in a 512x512 square. For WEBP
  /// stickers and masks the file must be in PNG format, which will be converted
  /// to WEBP server-side.. Otherwise, the file must be local or uploaded within
  /// a week. See
  /// https://core.telegram.org/animated_stickers#technical-requirements for
  /// technical requirements
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  /// [format] Sticker format
  final StickerFormat format;

  /// [maskPosition] Position where the mask is placed; pass null if not
  /// specified
  final MaskPosition? maskPosition;

  static const String constructor = 'inputSticker';

  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSticker(
      sticker: InputFile.fromJson(json['sticker'])!,
      emojis: json['emojis'],
      format: StickerFormat.fromJson(json['format'])!,
      maskPosition: MaskPosition.fromJson(json['mask_position']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'emojis': emojis,
        'format': format.toJson(),
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
