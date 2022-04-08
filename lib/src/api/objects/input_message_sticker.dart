import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class InputMessageSticker extends InputMessageContent {
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });

  /// [sticker] Sticker to be sent
  final InputFile sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [width] Sticker width
  final int width;

  /// [height] Sticker height
  final int height;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;

  static const String constructor = 'inputMessageSticker';

  static InputMessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageSticker(
      sticker: InputFile.fromJson(json['sticker'])!,
      thumbnail: InputThumbnail.fromJson(json['thumbnail']),
      width: json['width'],
      height: json['height'],
      emoji: json['emoji'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'width': width,
        'height': height,
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
