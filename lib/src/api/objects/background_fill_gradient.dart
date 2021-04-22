import '../tdapi.dart';

/// Describes a gradient fill of a background
class BackgroundFillGradient extends BackgroundFill {
  BackgroundFillGradient(
      {required this.topColor,
      required this.bottomColor,
      required this.rotationAngle});

  /// [topColor] A top color of the background in the RGB24 format
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB24 format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees;
  /// 0-359. Should be always divisible by 45
  final int rotationAngle;

  static const String CONSTRUCTOR = 'backgroundFillGradient';

  static BackgroundFillGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillGradient(
        topColor: json['top_color'],
        bottomColor: json['bottom_color'],
        rotationAngle: json['rotation_angle']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'top_color': this.topColor,
        'bottom_color': this.bottomColor,
        'rotation_angle': this.rotationAngle,
        '@type': CONSTRUCTOR
      };
}
