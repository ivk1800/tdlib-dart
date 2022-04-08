import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A cubic B
@immutable
class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  const VectorPathCommandCubicBezierCurve({
    required this.startControlPoint,
    required this.endControlPoint,
    required this.endPoint,
  });

  final Point startControlPoint;

  final Point endControlPoint;

  final Point endPoint;

  static const String constructor = 'vectorPathCommandCubicBezierCurve';

  static VectorPathCommandCubicBezierCurve? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandCubicBezierCurve(
      startControlPoint: Point.fromJson(json['start_control_point'])!,
      endControlPoint: Point.fromJson(json['end_control_point'])!,
      endPoint: Point.fromJson(json['end_point'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_control_point': startControlPoint.toJson(),
        'end_control_point': endControlPoint.toJson(),
        'end_point': endPoint.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
