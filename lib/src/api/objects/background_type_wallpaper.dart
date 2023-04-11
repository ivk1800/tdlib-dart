import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A wallpaper in JPEG format
@immutable
class BackgroundTypeWallpaper extends BackgroundType {
  const BackgroundTypeWallpaper({
    required this.isBlurred,
    required this.isMoving,
  });

  /// [isBlurred] True, if the wallpaper must be downscaled to fit in 450x450
  /// square and then box-blurred with radius 12
  final bool isBlurred;

  /// [isMoving] True, if the background needs to be slightly moved when device
  /// is tilted
  final bool isMoving;

  static const String constructor = 'backgroundTypeWallpaper';

  static BackgroundTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeWallpaper(
      isBlurred: json['is_blurred'] as bool,
      isMoving: json['is_moving'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_blurred': isBlurred,
        'is_moving': isMoving,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
