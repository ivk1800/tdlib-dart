import '../tdapi.dart';

/// A straight line to a given point
class VectorPathCommandLine extends VectorPathCommand {
  VectorPathCommandLine({required this.endPoint});

  /// [endPoint] The end point of the straight line
  final Point endPoint;

  static const String CONSTRUCTOR = 'vectorPathCommandLine';

  static VectorPathCommandLine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandLine(endPoint: Point.fromJson(json['end_point'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'end_point': this.endPoint.toJson(), '@type': CONSTRUCTOR};
}
