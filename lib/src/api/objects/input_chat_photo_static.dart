import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A static photo in JPEG format
@immutable
class InputChatPhotoStatic extends InputChatPhoto {
  const InputChatPhotoStatic({
    required this.photo,
  });

  /// [photo] Photo to be set as profile photo. Only inputFileLocal and
  /// inputFileGenerated are allowed
  final InputFile photo;

  static const String constructor = 'inputChatPhotoStatic';

  static InputChatPhotoStatic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoStatic(
      photo: InputFile.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
