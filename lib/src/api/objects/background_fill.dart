import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a fill of a background
abstract class BackgroundFill extends TdObject {
  const BackgroundFill();

  static const String CONSTRUCTOR = 'backgroundFill';

  /// Inherited by:
  /// [BackgroundFillSolid]
  /// [BackgroundFillGradient]
  /// [BackgroundFillFreeformGradient]
  static BackgroundFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case BackgroundFillSolid.CONSTRUCTOR:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.CONSTRUCTOR:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.CONSTRUCTOR:
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
