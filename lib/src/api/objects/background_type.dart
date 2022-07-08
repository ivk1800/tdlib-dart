import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of a background
@immutable
abstract class BackgroundType extends TdObject {
  const BackgroundType();

  static const String constructor = 'backgroundType';

  /// Inherited by:
  /// [BackgroundTypeFill]
  /// [BackgroundTypePattern]
  /// [BackgroundTypeWallpaper]
  static BackgroundType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BackgroundTypeFill.constructor:
        return BackgroundTypeFill.fromJson(json);
      case BackgroundTypePattern.constructor:
        return BackgroundTypePattern.fromJson(json);
      case BackgroundTypeWallpaper.constructor:
        return BackgroundTypeWallpaper.fromJson(json);
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
