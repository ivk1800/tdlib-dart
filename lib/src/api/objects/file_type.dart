import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of file
@immutable
abstract class FileType extends TdObject {
  const FileType();

  static const String constructor = 'fileType';

  /// Inherited by:
  /// [FileTypeAnimation]
  /// [FileTypeAudio]
  /// [FileTypeDocument]
  /// [FileTypeNone]
  /// [FileTypeNotificationSound]
  /// [FileTypePhotoStory]
  /// [FileTypePhoto]
  /// [FileTypeProfilePhoto]
  /// [FileTypeSecretThumbnail]
  /// [FileTypeSecret]
  /// [FileTypeSecure]
  /// [FileTypeSticker]
  /// [FileTypeThumbnail]
  /// [FileTypeUnknown]
  /// [FileTypeVideoNote]
  /// [FileTypeVideoStory]
  /// [FileTypeVideo]
  /// [FileTypeVoiceNote]
  /// [FileTypeWallpaper]
  static FileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FileTypeAnimation.constructor:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.constructor:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.constructor:
        return FileTypeDocument.fromJson(json);
      case FileTypeNone.constructor:
        return FileTypeNone.fromJson(json);
      case FileTypeNotificationSound.constructor:
        return FileTypeNotificationSound.fromJson(json);
      case FileTypePhoto.constructor:
        return FileTypePhoto.fromJson(json);
      case FileTypePhotoStory.constructor:
        return FileTypePhotoStory.fromJson(json);
      case FileTypeProfilePhoto.constructor:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.constructor:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.constructor:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.constructor:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.constructor:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.constructor:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.constructor:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.constructor:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.constructor:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVideoStory.constructor:
        return FileTypeVideoStory.fromJson(json);
      case FileTypeVoiceNote.constructor:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.constructor:
        return FileTypeWallpaper.fromJson(json);
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
