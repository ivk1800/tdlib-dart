import '../tdapi.dart';

/// Describes a photo to be set as a user profile or chat photo
abstract class InputChatPhoto extends TdObject {
  const InputChatPhoto();

  static const String CONSTRUCTOR = 'inputChatPhoto';

  /// Inherited by:
  /// [InputChatPhotoPrevious]
  /// [InputChatPhotoStatic]
  /// [InputChatPhotoAnimation]
  static InputChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputChatPhotoPrevious.CONSTRUCTOR:
        return InputChatPhotoPrevious.fromJson(json);
      case InputChatPhotoStatic.CONSTRUCTOR:
        return InputChatPhotoStatic.fromJson(json);
      case InputChatPhotoAnimation.CONSTRUCTOR:
        return InputChatPhotoAnimation.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
