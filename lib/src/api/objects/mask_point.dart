import '../tdapi.dart';

/// Part of the face, relative to which a mask should be placed
abstract class MaskPoint extends TdObject {
  const MaskPoint();

  static const String CONSTRUCTOR = 'maskPoint';

  /// Inherited by:
  /// [MaskPointForehead]
  /// [MaskPointEyes]
  /// [MaskPointMouth]
  /// [MaskPointChin]
  static MaskPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MaskPointForehead.CONSTRUCTOR:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.CONSTRUCTOR:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.CONSTRUCTOR:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.CONSTRUCTOR:
        return MaskPointChin.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
