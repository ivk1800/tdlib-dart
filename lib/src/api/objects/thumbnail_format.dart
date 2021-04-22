import '../tdapi.dart';

/// Describes format of the thumbnail
abstract class ThumbnailFormat extends TdObject {
  const ThumbnailFormat();

  static const String CONSTRUCTOR = 'thumbnailFormat';

  /// Inherited by:
  /// [ThumbnailFormatJpeg]
  /// [ThumbnailFormatPng]
  /// [ThumbnailFormatWebp]
  /// [ThumbnailFormatGif]
  /// [ThumbnailFormatTgs]
  /// [ThumbnailFormatMpeg4]
  static ThumbnailFormat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ThumbnailFormatJpeg.CONSTRUCTOR:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatPng.CONSTRUCTOR:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatWebp.CONSTRUCTOR:
        return ThumbnailFormatWebp.fromJson(json);
      case ThumbnailFormatGif.CONSTRUCTOR:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatTgs.CONSTRUCTOR:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatMpeg4.CONSTRUCTOR:
        return ThumbnailFormatMpeg4.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
