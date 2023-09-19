import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a clickable rectangle area on a story media to be added
@immutable
abstract class InputStoryAreaType extends TdObject {
  const InputStoryAreaType();

  static const String constructor = 'inputStoryAreaType';

  /// Inherited by:
  /// [InputStoryAreaTypeFoundVenue]
  /// [InputStoryAreaTypeLocation]
  /// [InputStoryAreaTypePreviousVenue]
  static InputStoryAreaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryAreaTypeFoundVenue.constructor:
        return InputStoryAreaTypeFoundVenue.fromJson(json);
      case InputStoryAreaTypeLocation.constructor:
        return InputStoryAreaTypeLocation.fromJson(json);
      case InputStoryAreaTypePreviousVenue.constructor:
        return InputStoryAreaTypePreviousVenue.fromJson(json);
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
