import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A straight line to a given point
@immutable
class VectorPathCommandLine extends VectorPathCommand {
  const VectorPathCommandLine({
    required this.endPoint,
  });

  /// [endPoint] The end point of the straight line
  final Point endPoint;

  static const String constructor = 'vectorPathCommandLine';

  static VectorPathCommandLine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandLine(
      endPoint: Point.fromJson(json['end_point'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'end_point': endPoint.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
