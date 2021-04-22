import '../tdapi.dart';

/// Describes the different types of activity in a chat
abstract class ChatAction extends TdObject {
  const ChatAction();

  static const String CONSTRUCTOR = 'chatAction';

  /// Inherited by:
  /// [ChatActionTyping]
  /// [ChatActionRecordingVideo]
  /// [ChatActionUploadingVideo]
  /// [ChatActionRecordingVoiceNote]
  /// [ChatActionUploadingVoiceNote]
  /// [ChatActionUploadingPhoto]
  /// [ChatActionUploadingDocument]
  /// [ChatActionChoosingLocation]
  /// [ChatActionChoosingContact]
  /// [ChatActionStartPlayingGame]
  /// [ChatActionRecordingVideoNote]
  /// [ChatActionUploadingVideoNote]
  /// [ChatActionCancel]
  static ChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatActionTyping.CONSTRUCTOR:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.CONSTRUCTOR:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.CONSTRUCTOR:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.CONSTRUCTOR:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.CONSTRUCTOR:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.CONSTRUCTOR:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.CONSTRUCTOR:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingLocation.CONSTRUCTOR:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.CONSTRUCTOR:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.CONSTRUCTOR:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.CONSTRUCTOR:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.CONSTRUCTOR:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionCancel.CONSTRUCTOR:
        return ChatActionCancel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
