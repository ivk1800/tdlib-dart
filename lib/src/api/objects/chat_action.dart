import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the different types of activity in a chat
@immutable
abstract class ChatAction extends TdObject {
  const ChatAction();

  static const String constructor = 'chatAction';

  /// Inherited by:
  /// [ChatActionCancel]
  /// [ChatActionChoosingContact]
  /// [ChatActionChoosingLocation]
  /// [ChatActionChoosingSticker]
  /// [ChatActionRecordingVideoNote]
  /// [ChatActionRecordingVideo]
  /// [ChatActionRecordingVoiceNote]
  /// [ChatActionStartPlayingGame]
  /// [ChatActionTyping]
  /// [ChatActionUploadingDocument]
  /// [ChatActionUploadingPhoto]
  /// [ChatActionUploadingVideoNote]
  /// [ChatActionUploadingVideo]
  /// [ChatActionUploadingVoiceNote]
  /// [ChatActionWatchingAnimations]
  static ChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatActionCancel.constructor:
        return ChatActionCancel.fromJson(json);
      case ChatActionChoosingContact.constructor:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionChoosingLocation.constructor:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingSticker.constructor:
        return ChatActionChoosingSticker.fromJson(json);
      case ChatActionRecordingVideo.constructor:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionRecordingVideoNote.constructor:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionRecordingVoiceNote.constructor:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionStartPlayingGame.constructor:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionTyping.constructor:
        return ChatActionTyping.fromJson(json);
      case ChatActionUploadingDocument.constructor:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionUploadingPhoto.constructor:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingVideo.constructor:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionUploadingVideoNote.constructor:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionUploadingVoiceNote.constructor:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionWatchingAnimations.constructor:
        return ChatActionWatchingAnimations.fromJson(json);
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
