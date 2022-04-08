import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a photo to be set as a user profile or chat photo
@immutable
abstract class InputChatPhoto extends TdObject {
  const InputChatPhoto();

  static const String constructor = 'inputChatPhoto';

  /// Inherited by:
  /// [InputChatPhotoPrevious]
  /// [InputChatPhotoStatic]
  /// [InputChatPhotoAnimation]
  static InputChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputChatPhotoPrevious.constructor:
        return InputChatPhotoPrevious.fromJson(json);
      case InputChatPhotoStatic.constructor:
        return InputChatPhotoStatic.fromJson(json);
      case InputChatPhotoAnimation.constructor:
        return InputChatPhotoAnimation.fromJson(json);
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
