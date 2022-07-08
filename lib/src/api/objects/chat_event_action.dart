import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a chat event
@immutable
abstract class ChatEventAction extends TdObject {
  const ChatEventAction();

  static const String constructor = 'chatEventAction';

  /// Inherited by:
  /// [ChatEventAvailableReactionsChanged]
  /// [ChatEventDescriptionChanged]
  /// [ChatEventHasProtectedContentToggled]
  /// [ChatEventInviteLinkDeleted]
  /// [ChatEventInviteLinkEdited]
  /// [ChatEventInviteLinkRevoked]
  /// [ChatEventInvitesToggled]
  /// [ChatEventIsAllHistoryAvailableToggled]
  /// [ChatEventLinkedChatChanged]
  /// [ChatEventLocationChanged]
  /// [ChatEventMemberInvited]
  /// [ChatEventMemberJoinedByInviteLink]
  /// [ChatEventMemberJoinedByRequest]
  /// [ChatEventMemberJoined]
  /// [ChatEventMemberLeft]
  /// [ChatEventMemberPromoted]
  /// [ChatEventMemberRestricted]
  /// [ChatEventMessageDeleted]
  /// [ChatEventMessageEdited]
  /// [ChatEventMessagePinned]
  /// [ChatEventMessageTtlChanged]
  /// [ChatEventMessageUnpinned]
  /// [ChatEventPermissionsChanged]
  /// [ChatEventPhotoChanged]
  /// [ChatEventPollStopped]
  /// [ChatEventSignMessagesToggled]
  /// [ChatEventSlowModeDelayChanged]
  /// [ChatEventStickerSetChanged]
  /// [ChatEventTitleChanged]
  /// [ChatEventUsernameChanged]
  /// [ChatEventVideoChatCreated]
  /// [ChatEventVideoChatEnded]
  /// [ChatEventVideoChatMuteNewParticipantsToggled]
  /// [ChatEventVideoChatParticipantIsMutedToggled]
  /// [ChatEventVideoChatParticipantVolumeLevelChanged]
  static ChatEventAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatEventAvailableReactionsChanged.constructor:
        return ChatEventAvailableReactionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.constructor:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventHasProtectedContentToggled.constructor:
        return ChatEventHasProtectedContentToggled.fromJson(json);
      case ChatEventInviteLinkDeleted.constructor:
        return ChatEventInviteLinkDeleted.fromJson(json);
      case ChatEventInviteLinkEdited.constructor:
        return ChatEventInviteLinkEdited.fromJson(json);
      case ChatEventInviteLinkRevoked.constructor:
        return ChatEventInviteLinkRevoked.fromJson(json);
      case ChatEventInvitesToggled.constructor:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.constructor:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventLinkedChatChanged.constructor:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventLocationChanged.constructor:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventMemberInvited.constructor:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberJoined.constructor:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.constructor:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberJoinedByRequest.constructor:
        return ChatEventMemberJoinedByRequest.fromJson(json);
      case ChatEventMemberLeft.constructor:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberPromoted.constructor:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.constructor:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventMessageDeleted.constructor:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventMessageEdited.constructor:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessagePinned.constructor:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageTtlChanged.constructor:
        return ChatEventMessageTtlChanged.fromJson(json);
      case ChatEventMessageUnpinned.constructor:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventPermissionsChanged.constructor:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventPhotoChanged.constructor:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventPollStopped.constructor:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventSignMessagesToggled.constructor:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventSlowModeDelayChanged.constructor:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventStickerSetChanged.constructor:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventTitleChanged.constructor:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventUsernameChanged.constructor:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventVideoChatCreated.constructor:
        return ChatEventVideoChatCreated.fromJson(json);
      case ChatEventVideoChatEnded.constructor:
        return ChatEventVideoChatEnded.fromJson(json);
      case ChatEventVideoChatMuteNewParticipantsToggled.constructor:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);
      case ChatEventVideoChatParticipantIsMutedToggled.constructor:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVideoChatParticipantVolumeLevelChanged.constructor:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);
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
