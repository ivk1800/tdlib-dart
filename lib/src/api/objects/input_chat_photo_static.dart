import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A static photo in JPEG format
class InputChatPhotoStatic extends InputChatPhoto {
  InputChatPhotoStatic({required this.photo});

  /// [photo] Photo to be set as profile photo. Only inputFileLocal and
  /// inputFileGenerated are allowed
  final InputFile photo;

  static const String CONSTRUCTOR = 'inputChatPhotoStatic';

  static InputChatPhotoStatic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoStatic(photo: InputFile.fromJson(json['photo'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'photo': this.photo.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
