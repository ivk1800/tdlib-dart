import '../tdapi.dart';

/// The thumbnail is in PNG format. It will be used only for background
/// patterns
class ThumbnailFormatPng extends ThumbnailFormat {
  const ThumbnailFormatPng();

  static const String CONSTRUCTOR = 'thumbnailFormatPng';

  static ThumbnailFormatPng? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatPng();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
