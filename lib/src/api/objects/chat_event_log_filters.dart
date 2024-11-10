import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a set of filters used to obtain a chat event log
@immutable
class ChatEventLogFilters extends TdObject {
  const ChatEventLogFilters({
    required this.messageEdits,
    required this.messageDeletions,
    required this.messagePins,
    required this.memberJoins,
    required this.memberLeaves,
    required this.memberInvites,
    required this.memberPromotions,
    required this.memberRestrictions,
    required this.infoChanges,
    required this.settingChanges,
    required this.inviteLinkChanges,
    required this.videoChatChanges,
    required this.forumChanges,
    required this.subscriptionExtensions,
  });

  /// [messageEdits] True, if message edits need to be returned
  final bool messageEdits;

  /// [messageDeletions] True, if message deletions need to be returned
  final bool messageDeletions;

  /// [messagePins] True, if pin/unpin events need to be returned
  final bool messagePins;

  /// [memberJoins] True, if members joining events need to be returned
  final bool memberJoins;

  /// [memberLeaves] True, if members leaving events need to be returned
  final bool memberLeaves;

  /// [memberInvites] True, if invited member events need to be returned
  final bool memberInvites;

  /// [memberPromotions] True, if member promotion/demotion events need to be
  /// returned
  final bool memberPromotions;

  /// [memberRestrictions] True, if member
  /// restricted/unrestricted/banned/unbanned events need to be returned
  final bool memberRestrictions;

  /// [infoChanges] True, if changes in chat information need to be returned
  final bool infoChanges;

  /// [settingChanges] True, if changes in chat settings need to be returned
  final bool settingChanges;

  /// [inviteLinkChanges] True, if changes to invite links need to be returned
  final bool inviteLinkChanges;

  /// [videoChatChanges] True, if video chat actions need to be returned
  final bool videoChatChanges;

  /// [forumChanges] True, if forum-related actions need to be returned
  final bool forumChanges;

  /// [subscriptionExtensions] True, if subscription extensions need to be
  /// returned
  final bool subscriptionExtensions;

  static const String constructor = 'chatEventLogFilters';

  static ChatEventLogFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLogFilters(
      messageEdits: json['message_edits'] as bool,
      messageDeletions: json['message_deletions'] as bool,
      messagePins: json['message_pins'] as bool,
      memberJoins: json['member_joins'] as bool,
      memberLeaves: json['member_leaves'] as bool,
      memberInvites: json['member_invites'] as bool,
      memberPromotions: json['member_promotions'] as bool,
      memberRestrictions: json['member_restrictions'] as bool,
      infoChanges: json['info_changes'] as bool,
      settingChanges: json['setting_changes'] as bool,
      inviteLinkChanges: json['invite_link_changes'] as bool,
      videoChatChanges: json['video_chat_changes'] as bool,
      forumChanges: json['forum_changes'] as bool,
      subscriptionExtensions: json['subscription_extensions'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_edits': messageEdits,
        'message_deletions': messageDeletions,
        'message_pins': messagePins,
        'member_joins': memberJoins,
        'member_leaves': memberLeaves,
        'member_invites': memberInvites,
        'member_promotions': memberPromotions,
        'member_restrictions': memberRestrictions,
        'info_changes': infoChanges,
        'setting_changes': settingChanges,
        'invite_link_changes': inviteLinkChanges,
        'video_chat_changes': videoChatChanges,
        'forum_changes': forumChanges,
        'subscription_extensions': subscriptionExtensions,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
