import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about a supergroup or channel
@immutable
class SupergroupFullInfo extends TdObject {
  const SupergroupFullInfo({
    this.photo,
    required this.description,
    required this.memberCount,
    required this.administratorCount,
    required this.restrictedCount,
    required this.bannedCount,
    required this.linkedChatId,
    required this.slowModeDelay,
    required this.slowModeDelayExpiresIn,
    required this.canGetMembers,
    required this.hasHiddenMembers,
    required this.canHideMembers,
    required this.canSetStickerSet,
    required this.canSetLocation,
    required this.canGetStatistics,
    required this.canToggleAggressiveAntiSpam,
    required this.isAllHistoryAvailable,
    required this.hasAggressiveAntiSpamEnabled,
    required this.hasPinnedStories,
    required this.myBoostCount,
    required this.unrestrictBoostCount,
    required this.stickerSetId,
    required this.customEmojiStickerSetId,
    this.location,
    this.inviteLink,
    required this.botCommands,
    required this.upgradedFromBasicGroupId,
    required this.upgradedFromMaxMessageId,
  });

  /// [photo] Chat photo; may be null if empty or unknown. If non-null, then it
  /// is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// param_[description] Supergroup or channel description
  final String description;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown
  final int memberCount;

  /// [administratorCount] Number of privileged users in the supergroup or
  /// channel; 0 if unknown
  final int administratorCount;

  /// [restrictedCount] Number of restricted users in the supergroup; 0 if
  /// unknown
  final int restrictedCount;

  /// [bannedCount] Number of users banned from chat; 0 if unknown
  final int bannedCount;

  /// [linkedChatId] Chat identifier of a discussion group for the channel, or a
  /// channel, for which the supergroup is the designated discussion group; 0 if
  /// none or unknown
  final int linkedChatId;

  /// [slowModeDelay] Delay between consecutive sent messages for
  /// non-administrator supergroup members, in seconds
  final int slowModeDelay;

  /// [slowModeDelayExpiresIn] Time left before next message can be sent in the
  /// supergroup, in seconds. An updateSupergroupFullInfo update is not
  /// triggered when value of this field changes, but both new and old values
  /// are non-zero
  final double slowModeDelayExpiresIn;

  /// [canGetMembers] True, if members of the chat can be retrieved via
  /// getSupergroupMembers or searchChatMembers
  final bool canGetMembers;

  /// [hasHiddenMembers] True, if non-administrators can receive only
  /// administrators and bots using getSupergroupMembers or searchChatMembers
  final bool hasHiddenMembers;

  /// [canHideMembers] True, if non-administrators and non-bots can be hidden in
  /// responses to getSupergroupMembers and searchChatMembers for
  /// non-administrators
  final bool canHideMembers;

  /// [canSetStickerSet] True, if the supergroup sticker set can be changed
  final bool canSetStickerSet;

  /// [canSetLocation] True, if the supergroup location can be changed
  final bool canSetLocation;

  /// [canGetStatistics] True, if the supergroup or channel statistics are
  /// available
  final bool canGetStatistics;

  /// [canToggleAggressiveAntiSpam] True, if aggressive anti-spam checks can be
  /// enabled or disabled in the supergroup
  final bool canToggleAggressiveAntiSpam;

  /// [isAllHistoryAvailable] True, if new chat members will have access to old
  /// messages. In public, discussion, of forum groups and all channels, old
  /// messages are always available, so this option affects only private
  /// non-forum supergroups without a linked chat. The value of this field is
  /// only available to chat administrators
  final bool isAllHistoryAvailable;

  /// [hasAggressiveAntiSpamEnabled] True, if aggressive anti-spam checks are
  /// enabled in the supergroup. The value of this field is only available to
  /// chat administrators
  final bool hasAggressiveAntiSpamEnabled;

  /// [hasPinnedStories] True, if the supergroup or channel has pinned stories
  final bool hasPinnedStories;

  /// [myBoostCount] Number of times the current user boosted the supergroup or
  /// channel
  final int myBoostCount;

  /// [unrestrictBoostCount] Number of times the supergroup must be boosted by a
  /// user to ignore slow mode and chat permission restrictions; 0 if
  /// unspecified
  final int unrestrictBoostCount;

  /// [stickerSetId] Identifier of the supergroup sticker set that must be shown
  /// before user sticker sets; 0 if none
  final int stickerSetId;

  /// [customEmojiStickerSetId] Identifier of the custom emoji sticker set that
  /// can be used in the supergroup without Telegram Premium subscription; 0 if
  /// none
  final int customEmojiStickerSetId;

  /// [location] Location to which the supergroup is connected; may be null if
  /// none
  final ChatLocation? location;

  /// [inviteLink] Primary invite link for the chat; may be null. For chat
  /// administrators with can_invite_users right only
  final ChatInviteLink? inviteLink;

  /// [botCommands] List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// [upgradedFromBasicGroupId] Identifier of the basic group from which
  /// supergroup was upgraded; 0 if none
  final int upgradedFromBasicGroupId;

  /// [upgradedFromMaxMessageId] Identifier of the last message in the basic
  /// group from which supergroup was upgraded; 0 if none
  final int upgradedFromMaxMessageId;

  static const String constructor = 'supergroupFullInfo';

  static SupergroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupFullInfo(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
      description: json['description'] as String,
      memberCount: json['member_count'] as int,
      administratorCount: json['administrator_count'] as int,
      restrictedCount: json['restricted_count'] as int,
      bannedCount: json['banned_count'] as int,
      linkedChatId: json['linked_chat_id'] as int,
      slowModeDelay: json['slow_mode_delay'] as int,
      slowModeDelayExpiresIn:
          (json['slow_mode_delay_expires_in'] as num).toDouble(),
      canGetMembers: json['can_get_members'] as bool,
      hasHiddenMembers: json['has_hidden_members'] as bool,
      canHideMembers: json['can_hide_members'] as bool,
      canSetStickerSet: json['can_set_sticker_set'] as bool,
      canSetLocation: json['can_set_location'] as bool,
      canGetStatistics: json['can_get_statistics'] as bool,
      canToggleAggressiveAntiSpam:
          json['can_toggle_aggressive_anti_spam'] as bool,
      isAllHistoryAvailable: json['is_all_history_available'] as bool,
      hasAggressiveAntiSpamEnabled:
          json['has_aggressive_anti_spam_enabled'] as bool,
      hasPinnedStories: json['has_pinned_stories'] as bool,
      myBoostCount: json['my_boost_count'] as int,
      unrestrictBoostCount: json['unrestrict_boost_count'] as int,
      stickerSetId: int.tryParse(json['sticker_set_id']) ?? 0,
      customEmojiStickerSetId:
          int.tryParse(json['custom_emoji_sticker_set_id']) ?? 0,
      location:
          ChatLocation.fromJson(json['location'] as Map<String, dynamic>?),
      inviteLink:
          ChatInviteLink.fromJson(json['invite_link'] as Map<String, dynamic>?),
      botCommands: List<BotCommands>.from(
          ((json['bot_commands'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BotCommands.fromJson(item))
              .toList()),
      upgradedFromBasicGroupId: json['upgraded_from_basic_group_id'] as int,
      upgradedFromMaxMessageId: json['upgraded_from_max_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'description': description,
        'member_count': memberCount,
        'administrator_count': administratorCount,
        'restricted_count': restrictedCount,
        'banned_count': bannedCount,
        'linked_chat_id': linkedChatId,
        'slow_mode_delay': slowModeDelay,
        'slow_mode_delay_expires_in': slowModeDelayExpiresIn,
        'can_get_members': canGetMembers,
        'has_hidden_members': hasHiddenMembers,
        'can_hide_members': canHideMembers,
        'can_set_sticker_set': canSetStickerSet,
        'can_set_location': canSetLocation,
        'can_get_statistics': canGetStatistics,
        'can_toggle_aggressive_anti_spam': canToggleAggressiveAntiSpam,
        'is_all_history_available': isAllHistoryAvailable,
        'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
        'has_pinned_stories': hasPinnedStories,
        'my_boost_count': myBoostCount,
        'unrestrict_boost_count': unrestrictBoostCount,
        'sticker_set_id': stickerSetId.toString(),
        'custom_emoji_sticker_set_id': customEmojiStickerSetId.toString(),
        'location': location?.toJson(),
        'invite_link': inviteLink?.toJson(),
        'bot_commands': botCommands.map((item) => item.toJson()).toList(),
        'upgraded_from_basic_group_id': upgradedFromBasicGroupId,
        'upgraded_from_max_message_id': upgradedFromMaxMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
