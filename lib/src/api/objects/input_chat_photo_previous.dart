import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A previously used profile photo of the current user
@immutable
class InputChatPhotoPrevious extends InputChatPhoto {
  const InputChatPhotoPrevious({
    required this.chatPhotoId,
  });

  /// [chatPhotoId] Identifier of the current user's profile photo to reuse
  final int chatPhotoId;

  static const String constructor = 'inputChatPhotoPrevious';

  static InputChatPhotoPrevious? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoPrevious(
      chatPhotoId: int.tryParse(json['chat_photo_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_photo_id': chatPhotoId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
