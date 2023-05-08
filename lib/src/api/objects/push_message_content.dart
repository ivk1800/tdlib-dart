import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains content of a push message notification
@immutable
abstract class PushMessageContent extends TdObject {
  const PushMessageContent();

  static const String constructor = 'pushMessageContent';

  /// Inherited by:
  /// [PushMessageContentAnimation]
  /// [PushMessageContentAudio]
  /// [PushMessageContentBasicGroupChatCreate]
  /// [PushMessageContentChatAddMembers]
  /// [PushMessageContentChatChangePhoto]
  /// [PushMessageContentChatChangeTitle]
  /// [PushMessageContentChatDeleteMember]
  /// [PushMessageContentChatJoinByLink]
  /// [PushMessageContentChatJoinByRequest]
  /// [PushMessageContentChatSetBackground]
  /// [PushMessageContentChatSetTheme]
  /// [PushMessageContentContactRegistered]
  /// [PushMessageContentContact]
  /// [PushMessageContentDocument]
  /// [PushMessageContentGameScore]
  /// [PushMessageContentGame]
  /// [PushMessageContentHidden]
  /// [PushMessageContentInvoice]
  /// [PushMessageContentLocation]
  /// [PushMessageContentMediaAlbum]
  /// [PushMessageContentMessageForwards]
  /// [PushMessageContentPhoto]
  /// [PushMessageContentPoll]
  /// [PushMessageContentRecurringPayment]
  /// [PushMessageContentScreenshotTaken]
  /// [PushMessageContentSticker]
  /// [PushMessageContentSuggestProfilePhoto]
  /// [PushMessageContentText]
  /// [PushMessageContentVideoNote]
  /// [PushMessageContentVideo]
  /// [PushMessageContentVoiceNote]
  static PushMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PushMessageContentAnimation.constructor:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.constructor:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.constructor:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.constructor:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.constructor:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.constructor:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatDeleteMember.constructor:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.constructor:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.constructor:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentChatSetBackground.constructor:
        return PushMessageContentChatSetBackground.fromJson(json);
      case PushMessageContentChatSetTheme.constructor:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentContact.constructor:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.constructor:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.constructor:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.constructor:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.constructor:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentHidden.constructor:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentInvoice.constructor:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.constructor:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentMediaAlbum.constructor:
        return PushMessageContentMediaAlbum.fromJson(json);
      case PushMessageContentMessageForwards.constructor:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentPhoto.constructor:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.constructor:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentRecurringPayment.constructor:
        return PushMessageContentRecurringPayment.fromJson(json);
      case PushMessageContentScreenshotTaken.constructor:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.constructor:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentSuggestProfilePhoto.constructor:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);
      case PushMessageContentText.constructor:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.constructor:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.constructor:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.constructor:
        return PushMessageContentVoiceNote.fromJson(json);
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
