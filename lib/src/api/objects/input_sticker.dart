import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker to be added to a sticker set
@immutable
class InputSticker extends TdObject {
  const InputSticker({
    required this.sticker,
    required this.format,
    required this.emojis,
    this.maskPosition,
    required this.keywords,
  });

  /// [sticker] File with the sticker; must fit in a 512x512 square. For WEBP
  /// stickers the file must be in WEBP or PNG format, which will be converted
  /// to WEBP server-side. See
  /// https://core.telegram.org/animated_stickers#technical-requirements for
  /// technical requirements
  final InputFile sticker;

  /// [format] Format of the sticker
  final StickerFormat format;

  /// [emojis] String with 1-20 emoji corresponding to the sticker
  final String emojis;

  /// [maskPosition] Position where the mask is placed; pass null if not
  /// specified
  final MaskPosition? maskPosition;

  /// [keywords] List of up to 20 keywords with total length up to 64
  /// characters, which can be used to find the sticker
  final List<String> keywords;

  static const String constructor = 'inputSticker';

  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSticker(
      sticker: InputFile.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      format: StickerFormat.fromJson(json['format'] as Map<String, dynamic>?)!,
      emojis: json['emojis'] as String,
      maskPosition:
          MaskPosition.fromJson(json['mask_position'] as Map<String, dynamic>?),
      keywords: List<String>.from(
          ((json['keywords'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'format': format.toJson(),
        'emojis': emojis,
        'mask_position': maskPosition?.toJson(),
        'keywords': keywords.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
