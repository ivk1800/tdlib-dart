import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Thumbnail image of a very poor quality and low resolution
class Minithumbnail extends TdObject {
  Minithumbnail(
      {required this.width, required this.height, required this.data});

  /// [width] Thumbnail width, usually doesn't exceed 40
  final int width;

  /// [height] Thumbnail height, usually doesn't exceed 40
  final int height;

  /// [data] The thumbnail in JPEG format
  final String data;

  static const String CONSTRUCTOR = 'minithumbnail';

  static Minithumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Minithumbnail(
        width: json['width'], height: json['height'], data: json['data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'width': this.width,
        'height': this.height,
        'data': this.data,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
