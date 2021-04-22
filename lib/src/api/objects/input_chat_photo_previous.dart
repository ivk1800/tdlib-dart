import '../tdapi.dart';

/// A previously used profile photo of the current user
class InputChatPhotoPrevious extends InputChatPhoto {
  InputChatPhotoPrevious({required this.chatPhotoId});

  /// [chatPhotoId] Identifier of the current user's profile photo to reuse
  final int chatPhotoId;

  static const String CONSTRUCTOR = 'inputChatPhotoPrevious';

  static InputChatPhotoPrevious? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoPrevious(
        chatPhotoId: int.tryParse(json['chat_photo_id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_photo_id': this.chatPhotoId, '@type': CONSTRUCTOR};
}
