import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A thumbnail to be sent along with a file; must be in JPEG or WEBP format
/// for stickers, and less than 200 KB in size
class InputThumbnail extends TdObject {
  InputThumbnail(
      {required this.thumbnail, required this.width, required this.height});

  /// [thumbnail] Thumbnail file to send. Sending thumbnails by file_id is
  /// currently not supported
  final InputFile thumbnail;

  /// [width] Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  final int width;

  /// [height] Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  final int height;

  static const String CONSTRUCTOR = 'inputThumbnail';

  static InputThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputThumbnail(
        thumbnail: InputFile.fromJson(json['thumbnail'])!,
        width: json['width'],
        height: json['height']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'thumbnail': this.thumbnail.toJson(),
        'width': this.width,
        'height': this.height,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
