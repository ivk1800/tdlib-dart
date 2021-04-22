import '../tdapi.dart';

/// Describes a fill of a background
abstract class BackgroundFill extends TdObject {
  const BackgroundFill();

  static const String CONSTRUCTOR = 'backgroundFill';

  /// Inherited by:
  /// [BackgroundFillSolid]
  /// [BackgroundFillGradient]
  static BackgroundFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.CONSTRUCTOR:
        return BackgroundFillGradient.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
