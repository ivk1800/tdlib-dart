import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The thumbnail is in JPEG format
class ThumbnailFormatJpeg extends ThumbnailFormat {
  const ThumbnailFormatJpeg();

  static const String CONSTRUCTOR = 'thumbnailFormatJpeg';

  static ThumbnailFormatJpeg? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatJpeg();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
