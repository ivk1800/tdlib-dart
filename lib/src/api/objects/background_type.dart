import '../tdapi.dart';

/// Describes the type of a background
abstract class BackgroundType extends TdObject {
  const BackgroundType();

  static const String CONSTRUCTOR = 'backgroundType';

  /// Inherited by:
  /// [BackgroundTypeWallpaper]
  /// [BackgroundTypePattern]
  /// [BackgroundTypeFill]
  static BackgroundType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case BackgroundTypeWallpaper.CONSTRUCTOR:
        return BackgroundTypeWallpaper.fromJson(json);
      case BackgroundTypePattern.CONSTRUCTOR:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeFill.CONSTRUCTOR:
        return BackgroundTypeFill.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
