import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a gradient fill of a background
@immutable
class BackgroundFillGradient extends BackgroundFill {
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  /// [topColor] A top color of the background in the RGB24 format
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB24 format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees;
  /// 0-359. Must always be divisible by 45
  final int rotationAngle;

  static const String constructor = 'backgroundFillGradient';

  static BackgroundFillGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillGradient(
      topColor: json['top_color'],
      bottomColor: json['bottom_color'],
      rotationAngle: json['rotation_angle'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'top_color': topColor,
        'bottom_color': bottomColor,
        'rotation_angle': rotationAngle,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
