import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Part of the face, relative to which a mask is placed
@immutable
abstract class MaskPoint extends TdObject {
  const MaskPoint();

  static const String constructor = 'maskPoint';

  /// Inherited by:
  /// [MaskPointForehead]
  /// [MaskPointEyes]
  /// [MaskPointMouth]
  /// [MaskPointChin]
  static MaskPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MaskPointForehead.constructor:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.constructor:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.constructor:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.constructor:
        return MaskPointChin.fromJson(json);
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
