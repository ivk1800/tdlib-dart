import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a thumbnail
@immutable
class Thumbnail extends TdObject {
  const Thumbnail({
    required this.format,
    required this.width,
    required this.height,
    required this.file,
  });

  /// [format] Thumbnail format
  final ThumbnailFormat format;

  /// [width] Thumbnail width
  final int width;

  /// [height] Thumbnail height
  final int height;

  /// [file] The thumbnail
  final File file;

  static const String constructor = 'thumbnail';

  static Thumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Thumbnail(
      format:
          ThumbnailFormat.fromJson(json['format'] as Map<String, dynamic>?)!,
      width: json['width'] as int,
      height: json['height'] as int,
      file: File.fromJson(json['file'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'format': format.toJson(),
        'width': width,
        'height': height,
        'file': file.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
