import '../tdapi.dart';

/// The thumbnail is in static GIF format. It will be used only for some bot
/// inline results
class ThumbnailFormatGif extends ThumbnailFormat {
  const ThumbnailFormatGif();

  static const String CONSTRUCTOR = 'thumbnailFormatGif';

  static ThumbnailFormatGif? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatGif();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
