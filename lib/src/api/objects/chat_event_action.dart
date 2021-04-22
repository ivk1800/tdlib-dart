import '../tdapi.dart';

/// Represents a chat event
abstract class ChatEventAction extends TdObject {
  const ChatEventAction();

  static const String CONSTRUCTOR = 'chatEventAction';

  /// Inherited by:
  /// [ChatEventMessageEdited]
  /// [ChatEventMessageDeleted]
  /// [ChatEventPollStopped]
  /// [ChatEventMessagePinned]
  /// [ChatEventMessageUnpinned]
  /// [ChatEventMemberJoined]
  /// [ChatEventMemberJoinedByInviteLink]
  /// [ChatEventMemberLeft]
  /// [ChatEventMemberInvited]
  /// [ChatEventMemberPromoted]
  /// [ChatEventMemberRestricted]
  /// [ChatEventTitleChanged]
  /// [ChatEventPermissionsChanged]
  /// [ChatEventDescriptionChanged]
  /// [ChatEventUsernameChanged]
  /// [ChatEventPhotoChanged]
  /// [ChatEventInvitesToggled]
  /// [ChatEventLinkedChatChanged]
  /// [ChatEventSlowModeDelayChanged]
  /// [ChatEventMessageTtlSettingChanged]
  /// [ChatEventSignMessagesToggled]
  /// [ChatEventStickerSetChanged]
  /// [ChatEventLocationChanged]
  /// [ChatEventIsAllHistoryAvailableToggled]
  /// [ChatEventInviteLinkEdited]
  /// [ChatEventInviteLinkRevoked]
  /// [ChatEventInviteLinkDeleted]
  /// [ChatEventVoiceChatCreated]
  /// [ChatEventVoiceChatDiscarded]
  /// [ChatEventVoiceChatParticipantIsMutedToggled]
  /// [ChatEventVoiceChatParticipantVolumeLevelChanged]
  /// [ChatEventVoiceChatMuteNewParticipantsToggled]
  static ChatEventAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventPollStopped.CONSTRUCTOR:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.CONSTRUCTOR:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventMessageTtlSettingChanged.CONSTRUCTOR:
        return ChatEventMessageTtlSettingChanged.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventInviteLinkEdited.CONSTRUCTOR:
        return ChatEventInviteLinkEdited.fromJson(json);
      case ChatEventInviteLinkRevoked.CONSTRUCTOR:
        return ChatEventInviteLinkRevoked.fromJson(json);
      case ChatEventInviteLinkDeleted.CONSTRUCTOR:
        return ChatEventInviteLinkDeleted.fromJson(json);
      case ChatEventVoiceChatCreated.CONSTRUCTOR:
        return ChatEventVoiceChatCreated.fromJson(json);
      case ChatEventVoiceChatDiscarded.CONSTRUCTOR:
        return ChatEventVoiceChatDiscarded.fromJson(json);
      case ChatEventVoiceChatParticipantIsMutedToggled.CONSTRUCTOR:
        return ChatEventVoiceChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVoiceChatParticipantVolumeLevelChanged.CONSTRUCTOR:
        return ChatEventVoiceChatParticipantVolumeLevelChanged.fromJson(json);
      case ChatEventVoiceChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
