import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains content of a push message notification
abstract class PushMessageContent extends TdObject {
  const PushMessageContent();

  static const String CONSTRUCTOR = 'pushMessageContent';

  /// Inherited by:
  /// [PushMessageContentHidden]
  /// [PushMessageContentAnimation]
  /// [PushMessageContentAudio]
  /// [PushMessageContentContact]
  /// [PushMessageContentContactRegistered]
  /// [PushMessageContentDocument]
  /// [PushMessageContentGame]
  /// [PushMessageContentGameScore]
  /// [PushMessageContentInvoice]
  /// [PushMessageContentLocation]
  /// [PushMessageContentPhoto]
  /// [PushMessageContentPoll]
  /// [PushMessageContentScreenshotTaken]
  /// [PushMessageContentSticker]
  /// [PushMessageContentText]
  /// [PushMessageContentVideo]
  /// [PushMessageContentVideoNote]
  /// [PushMessageContentVoiceNote]
  /// [PushMessageContentBasicGroupChatCreate]
  /// [PushMessageContentChatAddMembers]
  /// [PushMessageContentChatChangePhoto]
  /// [PushMessageContentChatChangeTitle]
  /// [PushMessageContentChatSetTheme]
  /// [PushMessageContentChatDeleteMember]
  /// [PushMessageContentChatJoinByLink]
  /// [PushMessageContentChatJoinByRequest]
  /// [PushMessageContentMessageForwards]
  /// [PushMessageContentMediaAlbum]
  static PushMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PushMessageContentHidden.CONSTRUCTOR:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.CONSTRUCTOR:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.CONSTRUCTOR:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.CONSTRUCTOR:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.CONSTRUCTOR:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.CONSTRUCTOR:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.CONSTRUCTOR:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.CONSTRUCTOR:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.CONSTRUCTOR:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.CONSTRUCTOR:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPhoto.CONSTRUCTOR:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.CONSTRUCTOR:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentScreenshotTaken.CONSTRUCTOR:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.CONSTRUCTOR:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentText.CONSTRUCTOR:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.CONSTRUCTOR:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.CONSTRUCTOR:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.CONSTRUCTOR:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.CONSTRUCTOR:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.CONSTRUCTOR:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.CONSTRUCTOR:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.CONSTRUCTOR:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatSetTheme.CONSTRUCTOR:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.CONSTRUCTOR:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
