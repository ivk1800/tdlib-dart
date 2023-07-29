import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a story to send
@immutable
abstract class InputStoryContent extends TdObject {
  const InputStoryContent();

  static const String constructor = 'inputStoryContent';

  /// Inherited by:
  /// [InputStoryContentPhoto]
  /// [InputStoryContentVideo]
  static InputStoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryContentPhoto.constructor:
        return InputStoryContentPhoto.fromJson(json);
      case InputStoryContentVideo.constructor:
        return InputStoryContentVideo.fromJson(json);
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
