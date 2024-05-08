import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of clickable rectangle area on a story media to be added
@immutable
abstract class InputStoryAreaType extends TdObject {
  const InputStoryAreaType();

  static const String constructor = 'inputStoryAreaType';

  /// Inherited by:
  /// [InputStoryAreaTypeFoundVenue]
  /// [InputStoryAreaTypeLocation]
  /// [InputStoryAreaTypeMessage]
  /// [InputStoryAreaTypePreviousVenue]
  /// [InputStoryAreaTypeSuggestedReaction]
  static InputStoryAreaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryAreaTypeFoundVenue.constructor:
        return InputStoryAreaTypeFoundVenue.fromJson(json);
      case InputStoryAreaTypeLocation.constructor:
        return InputStoryAreaTypeLocation.fromJson(json);
      case InputStoryAreaTypeMessage.constructor:
        return InputStoryAreaTypeMessage.fromJson(json);
      case InputStoryAreaTypePreviousVenue.constructor:
        return InputStoryAreaTypePreviousVenue.fromJson(json);
      case InputStoryAreaTypeSuggestedReaction.constructor:
        return InputStoryAreaTypeSuggestedReaction.fromJson(json);
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
