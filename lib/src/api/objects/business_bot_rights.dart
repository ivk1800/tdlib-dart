import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes rights of a business bot
@immutable
class BusinessBotRights extends TdObject {
  const BusinessBotRights({
    required this.canReply,
    required this.canReadMessages,
    required this.canDeleteSentMessages,
    required this.canDeleteAllMessages,
    required this.canEditName,
    required this.canEditBio,
    required this.canEditProfilePhoto,
    required this.canEditUsername,
    required this.canViewGiftsAndStars,
    required this.canSellGifts,
    required this.canChangeGiftSettings,
    required this.canTransferAndUpgradeGifts,
    required this.canTransferStars,
    required this.canManageStories,
  });

  /// [canReply] True, if the bot can send and edit messages in the private
  /// chats that had incoming messages in the last 24 hours
  final bool canReply;

  /// [canReadMessages] True, if the bot can mark incoming private messages as
  /// read
  final bool canReadMessages;

  /// [canDeleteSentMessages] True, if the bot can delete sent messages
  final bool canDeleteSentMessages;

  /// [canDeleteAllMessages] True, if the bot can delete any message
  final bool canDeleteAllMessages;

  /// [canEditName] True, if the bot can edit name of the business account
  final bool canEditName;

  /// [canEditBio] True, if the bot can edit bio of the business account
  final bool canEditBio;

  /// [canEditProfilePhoto] True, if the bot can edit profile photo of the
  /// business account
  final bool canEditProfilePhoto;

  /// [canEditUsername] True, if the bot can edit username of the business
  /// account
  final bool canEditUsername;

  /// [canViewGiftsAndStars] True, if the bot can view gifts and amount of
  /// Telegram Stars owned by the business account
  final bool canViewGiftsAndStars;

  /// [canSellGifts] True, if the bot can sell regular gifts received by the
  /// business account
  final bool canSellGifts;

  /// [canChangeGiftSettings] True, if the bot can change gift receiving
  /// settings of the business account
  final bool canChangeGiftSettings;

  /// [canTransferAndUpgradeGifts] True, if the bot can transfer and upgrade
  /// gifts received by the business account
  final bool canTransferAndUpgradeGifts;

  /// [canTransferStars] True, if the bot can transfer Telegram Stars received
  /// by the business account to account of the bot, or use them to upgrade and
  /// transfer gifts
  final bool canTransferStars;

  /// [canManageStories] True, if the bot can post, edit and delete stories
  final bool canManageStories;

  static const String constructor = 'businessBotRights';

  static BusinessBotRights? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessBotRights(
      canReply: json['can_reply'] as bool,
      canReadMessages: json['can_read_messages'] as bool,
      canDeleteSentMessages: json['can_delete_sent_messages'] as bool,
      canDeleteAllMessages: json['can_delete_all_messages'] as bool,
      canEditName: json['can_edit_name'] as bool,
      canEditBio: json['can_edit_bio'] as bool,
      canEditProfilePhoto: json['can_edit_profile_photo'] as bool,
      canEditUsername: json['can_edit_username'] as bool,
      canViewGiftsAndStars: json['can_view_gifts_and_stars'] as bool,
      canSellGifts: json['can_sell_gifts'] as bool,
      canChangeGiftSettings: json['can_change_gift_settings'] as bool,
      canTransferAndUpgradeGifts:
          json['can_transfer_and_upgrade_gifts'] as bool,
      canTransferStars: json['can_transfer_stars'] as bool,
      canManageStories: json['can_manage_stories'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_reply': canReply,
    'can_read_messages': canReadMessages,
    'can_delete_sent_messages': canDeleteSentMessages,
    'can_delete_all_messages': canDeleteAllMessages,
    'can_edit_name': canEditName,
    'can_edit_bio': canEditBio,
    'can_edit_profile_photo': canEditProfilePhoto,
    'can_edit_username': canEditUsername,
    'can_view_gifts_and_stars': canViewGiftsAndStars,
    'can_sell_gifts': canSellGifts,
    'can_change_gift_settings': canChangeGiftSettings,
    'can_transfer_and_upgrade_gifts': canTransferAndUpgradeGifts,
    'can_transfer_stars': canTransferStars,
    'can_manage_stories': canManageStories,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
