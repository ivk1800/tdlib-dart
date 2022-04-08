import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a fill of a background
@immutable
abstract class BackgroundFill extends TdObject {
  const BackgroundFill();

  static const String constructor = 'backgroundFill';

  /// Inherited by:
  /// [BackgroundFillSolid]
  /// [BackgroundFillGradient]
  /// [BackgroundFillFreeformGradient]
  static BackgroundFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BackgroundFillSolid.constructor:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.constructor:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.constructor:
        return BackgroundFillFreeformGradient.fromJson(json);
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
