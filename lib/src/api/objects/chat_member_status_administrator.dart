import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is a member of the chat and has some additional privileges. In
/// basic groups, administrators can edit and delete messages sent by others,
/// add new members, ban unprivileged members, and manage video chats. In
/// supergroups and channels, there are more detailed options for
/// administrator privileges
@immutable
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  const ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.canManageChat,
    required this.canChangeInfo,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canDeleteMessages,
    required this.canInviteUsers,
    required this.canRestrictMembers,
    required this.canPinMessages,
    required this.canPromoteMembers,
    required this.canManageVideoChats,
    required this.isAnonymous,
  });

  /// [customTitle] A custom title of the administrator; 0-16 characters without
  /// emojis; applicable to supergroups only
  final String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [canManageChat] True, if the administrator can get chat event log, get
  /// chat statistics, get message statistics in channels, get channel members,
  /// see anonymous administrators in supergroups and ignore slow mode. Implied
  /// by any other privilege; applicable to supergroups and channels only
  final bool canManageChat;

  /// [canChangeInfo] True, if the administrator can change the chat title,
  /// photo, and other settings
  final bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts;
  /// applicable to channels only
  final bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other
  /// users and pin messages; applicable to channels only
  final bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of
  /// other users
  final bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the
  /// chat
  final bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or
  /// unban chat members; always true for channels
  final bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable
  /// to basic groups and supergroups only
  final bool canPinMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators
  /// with a subset of their own privileges or demote administrators that were
  /// directly or indirectly promoted by them
  final bool canPromoteMembers;

  /// [canManageVideoChats] True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member
  /// list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  static const String constructor = 'chatMemberStatusAdministrator';

  static ChatMemberStatusAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusAdministrator(
      customTitle: json['custom_title'],
      canBeEdited: json['can_be_edited'],
      canManageChat: json['can_manage_chat'],
      canChangeInfo: json['can_change_info'],
      canPostMessages: json['can_post_messages'],
      canEditMessages: json['can_edit_messages'],
      canDeleteMessages: json['can_delete_messages'],
      canInviteUsers: json['can_invite_users'],
      canRestrictMembers: json['can_restrict_members'],
      canPinMessages: json['can_pin_messages'],
      canPromoteMembers: json['can_promote_members'],
      canManageVideoChats: json['can_manage_video_chats'],
      isAnonymous: json['is_anonymous'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_title': customTitle,
        'can_be_edited': canBeEdited,
        'can_manage_chat': canManageChat,
        'can_change_info': canChangeInfo,
        'can_post_messages': canPostMessages,
        'can_edit_messages': canEditMessages,
        'can_delete_messages': canDeleteMessages,
        'can_invite_users': canInviteUsers,
        'can_restrict_members': canRestrictMembers,
        'can_pin_messages': canPinMessages,
        'can_promote_members': canPromoteMembers,
        'can_manage_video_chats': canManageVideoChats,
        'is_anonymous': isAnonymous,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
