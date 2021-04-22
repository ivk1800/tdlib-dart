import '../tdapi.dart';

/// Represents the type of a file
abstract class FileType extends TdObject {
  const FileType();

  static const String CONSTRUCTOR = 'fileType';

  /// Inherited by:
  /// [FileTypeNone]
  /// [FileTypeAnimation]
  /// [FileTypeAudio]
  /// [FileTypeDocument]
  /// [FileTypePhoto]
  /// [FileTypeProfilePhoto]
  /// [FileTypeSecret]
  /// [FileTypeSecretThumbnail]
  /// [FileTypeSecure]
  /// [FileTypeSticker]
  /// [FileTypeThumbnail]
  /// [FileTypeUnknown]
  /// [FileTypeVideo]
  /// [FileTypeVideoNote]
  /// [FileTypeVoiceNote]
  /// [FileTypeWallpaper]
  static FileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case FileTypeNone.CONSTRUCTOR:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.CONSTRUCTOR:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.CONSTRUCTOR:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.CONSTRUCTOR:
        return FileTypeDocument.fromJson(json);
      case FileTypePhoto.CONSTRUCTOR:
        return FileTypePhoto.fromJson(json);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.CONSTRUCTOR:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.CONSTRUCTOR:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.CONSTRUCTOR:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.CONSTRUCTOR:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.CONSTRUCTOR:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.CONSTRUCTOR:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.CONSTRUCTOR:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.CONSTRUCTOR:
        return FileTypeWallpaper.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
