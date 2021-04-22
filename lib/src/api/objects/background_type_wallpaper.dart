import '../tdapi.dart';

/// A wallpaper in JPEG format
class BackgroundTypeWallpaper extends BackgroundType {
  BackgroundTypeWallpaper({required this.isBlurred, required this.isMoving});

  /// [isBlurred] True, if the wallpaper must be downscaled to fit in 450x450
  /// square and then box-blurred with radius 12
  final bool isBlurred;

  /// [isMoving] True, if the background needs to be slightly moved when device
  /// is tilted
  final bool isMoving;

  static const String CONSTRUCTOR = 'backgroundTypeWallpaper';

  static BackgroundTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeWallpaper(
        isBlurred: json['is_blurred'], isMoving: json['is_moving']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_blurred': this.isBlurred,
        'is_moving': this.isMoving,
        '@type': CONSTRUCTOR
      };
}
