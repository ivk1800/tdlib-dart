import '../tdapi.dart';

/// The thumbnail is in WEBP format. It will be used only for some stickers
class ThumbnailFormatWebp extends ThumbnailFormat {
  const ThumbnailFormatWebp();

  static const String CONSTRUCTOR = 'thumbnailFormatWebp';

  static ThumbnailFormatWebp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebp();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
