import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a vector path command
@immutable
abstract class VectorPathCommand extends TdObject {
  const VectorPathCommand();

  static const String constructor = 'vectorPathCommand';

  /// Inherited by:
  /// [VectorPathCommandLine]
  /// [VectorPathCommandCubicBezierCurve]
  static VectorPathCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case VectorPathCommandLine.constructor:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.constructor:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
