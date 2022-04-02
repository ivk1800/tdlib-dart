import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a thumbnail
class Thumbnail extends TdObject {
  Thumbnail(
      {required this.format,
      required this.width,
      required this.height,
      required this.file});

  /// [format] Thumbnail format
  final ThumbnailFormat format;

  /// [width] Thumbnail width
  final int width;

  /// [height] Thumbnail height
  final int height;

  /// [file] The thumbnail
  final File file;

  static const String CONSTRUCTOR = 'thumbnail';

  static Thumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Thumbnail(
        format: ThumbnailFormat.fromJson(json['format'])!,
        width: json['width'],
        height: json['height'],
        file: File.fromJson(json['file'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'format': this.format.toJson(),
        'width': this.width,
        'height': this.height,
        'file': this.file.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
