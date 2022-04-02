import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains the content of a message
abstract class MessageContent extends TdObject {
  const MessageContent();

  static const String CONSTRUCTOR = 'messageContent';

  /// Inherited by:
  /// [MessageText]
  /// [MessageAnimation]
  /// [MessageAudio]
  /// [MessageDocument]
  /// [MessagePhoto]
  /// [MessageExpiredPhoto]
  /// [MessageSticker]
  /// [MessageVideo]
  /// [MessageExpiredVideo]
  /// [MessageVideoNote]
  /// [MessageVoiceNote]
  /// [MessageLocation]
  /// [MessageVenue]
  /// [MessageContact]
  /// [MessageAnimatedEmoji]
  /// [MessageDice]
  /// [MessageGame]
  /// [MessagePoll]
  /// [MessageInvoice]
  /// [MessageCall]
  /// [MessageVideoChatScheduled]
  /// [MessageVideoChatStarted]
  /// [MessageVideoChatEnded]
  /// [MessageInviteVideoChatParticipants]
  /// [MessageBasicGroupChatCreate]
  /// [MessageSupergroupChatCreate]
  /// [MessageChatChangeTitle]
  /// [MessageChatChangePhoto]
  /// [MessageChatDeletePhoto]
  /// [MessageChatAddMembers]
  /// [MessageChatJoinByLink]
  /// [MessageChatJoinByRequest]
  /// [MessageChatDeleteMember]
  /// [MessageChatUpgradeTo]
  /// [MessageChatUpgradeFrom]
  /// [MessagePinMessage]
  /// [MessageScreenshotTaken]
  /// [MessageChatSetTheme]
  /// [MessageChatSetTtl]
  /// [MessageCustomServiceAction]
  /// [MessageGameScore]
  /// [MessagePaymentSuccessful]
  /// [MessagePaymentSuccessfulBot]
  /// [MessageContactRegistered]
  /// [MessageWebsiteConnected]
  /// [MessagePassportDataSent]
  /// [MessagePassportDataReceived]
  /// [MessageProximityAlertTriggered]
  /// [MessageUnsupported]
  static MessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessageAnimatedEmoji.CONSTRUCTOR:
        return MessageAnimatedEmoji.fromJson(json);
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageVideoChatScheduled.CONSTRUCTOR:
        return MessageVideoChatScheduled.fromJson(json);
      case MessageVideoChatStarted.CONSTRUCTOR:
        return MessageVideoChatStarted.fromJson(json);
      case MessageVideoChatEnded.CONSTRUCTOR:
        return MessageVideoChatEnded.fromJson(json);
      case MessageInviteVideoChatParticipants.CONSTRUCTOR:
        return MessageInviteVideoChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatJoinByRequest.CONSTRUCTOR:
        return MessageChatJoinByRequest.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetTheme.CONSTRUCTOR:
        return MessageChatSetTheme.fromJson(json);
      case MessageChatSetTtl.CONSTRUCTOR:
        return MessageChatSetTtl.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
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
