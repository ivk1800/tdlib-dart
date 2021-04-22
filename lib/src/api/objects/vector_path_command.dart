import '../tdapi.dart';

/// Represents a vector path command
abstract class VectorPathCommand extends TdObject {
  const VectorPathCommand();

  static const String CONSTRUCTOR = 'vectorPathCommand';

  /// Inherited by:
  /// [VectorPathCommandLine]
  /// [VectorPathCommandCubicBezierCurve]
  static VectorPathCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
