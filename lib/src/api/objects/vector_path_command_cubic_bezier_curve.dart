import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A cubic B
class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  VectorPathCommandCubicBezierCurve(
      {required this.startControlPoint,
      required this.endControlPoint,
      required this.endPoint});

  final Point startControlPoint;

  final Point endControlPoint;

  final Point endPoint;

  static const String CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  static VectorPathCommandCubicBezierCurve? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandCubicBezierCurve(
        startControlPoint: Point.fromJson(json['start_control_point'])!,
        endControlPoint: Point.fromJson(json['end_control_point'])!,
        endPoint: Point.fromJson(json['end_point'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'start_control_point': this.startControlPoint.toJson(),
        'end_control_point': this.endControlPoint.toJson(),
        'end_point': this.endPoint.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
