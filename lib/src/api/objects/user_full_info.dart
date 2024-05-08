import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about a user
@immutable
class UserFullInfo extends TdObject {
  const UserFullInfo({
    this.personalPhoto,
    this.photo,
    this.publicPhoto,
    this.blockList,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.hasRestrictedVoiceAndVideoNoteMessages,
    required this.hasPostedToProfileStories,
    required this.hasSponsoredMessagesEnabled,
    required this.needPhoneNumberPrivacyException,
    required this.setChatBackground,
    this.bio,
    this.birthdate,
    required this.personalChatId,
    required this.premiumGiftOptions,
    required this.groupInCommonCount,
    this.businessInfo,
    this.botInfo,
  });

  /// [personalPhoto] User profile photo set by the current user for the
  /// contact; may be null. If null and user.profile_photo is null, then the
  /// photo is empty; otherwise, it is unknown. If non-null, then it is the same
  /// photo as in user.profile_photo and chat.photo. This photo isn't returned
  /// in the list of user photos
  final ChatPhoto? personalPhoto;

  /// [photo] User profile photo; may be null. If null and user.profile_photo is
  /// null, then the photo is empty; otherwise, it is unknown. If non-null and
  /// personal_photo is null, then it is the same photo as in user.profile_photo
  /// and chat.photo
  final ChatPhoto? photo;

  /// [publicPhoto] User profile photo visible if the main photo is hidden by
  /// privacy settings; may be null. If null and user.profile_photo is null,
  /// then the photo is empty; otherwise, it is unknown. If non-null and both
  /// photo and personal_photo are null, then it is the same photo as in
  /// user.profile_photo and chat.photo. This photo isn't returned in the list
  /// of user photos
  final ChatPhoto? publicPhoto;

  /// [blockList] Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// [canBeCalled] True, if the user can be called
  final bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy
  /// settings
  final bool hasPrivateCalls;

  /// [hasPrivateForwards] True, if the user can't be linked in forwarded
  /// messages due to their privacy settings
  final bool hasPrivateForwards;

  /// [hasRestrictedVoiceAndVideoNoteMessages] True, if voice and video notes
  /// can't be sent or forwarded to the user
  final bool hasRestrictedVoiceAndVideoNoteMessages;

  /// [hasPostedToProfileStories] True, if the user has posted to profile
  /// stories
  final bool hasPostedToProfileStories;

  /// [hasSponsoredMessagesEnabled] True, if the user always enabled sponsored
  /// messages; known only for the current user
  final bool hasSponsoredMessagesEnabled;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to
  /// explicitly allow to share their phone number with the user when the method
  /// addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [setChatBackground] True, if the user set chat background for both chat
  /// users and it wasn't reverted yet
  final bool setChatBackground;

  /// [bio] A short user bio; may be null for bots
  final FormattedText? bio;

  /// [birthdate] Birthdate of the user; may be null if unknown
  final Birthdate? birthdate;

  /// [personalChatId] Identifier of the personal chat of the user; 0 if none
  final int personalChatId;

  /// [premiumGiftOptions] The list of available options for gifting Telegram
  /// Premium to the user
  final List<PremiumPaymentOption> premiumGiftOptions;

  /// [groupInCommonCount] Number of group chats where both the other user and
  /// the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [businessInfo] Information about business settings for Telegram Business
  /// accounts; may be null if none
  final BusinessInfo? businessInfo;

  /// [botInfo] For bots, information about the bot; may be null if the user
  /// isn't a bot
  final BotInfo? botInfo;

  static const String constructor = 'userFullInfo';

  static UserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserFullInfo(
      personalPhoto:
          ChatPhoto.fromJson(json['personal_photo'] as Map<String, dynamic>?),
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?),
      publicPhoto:
          ChatPhoto.fromJson(json['public_photo'] as Map<String, dynamic>?),
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      canBeCalled: json['can_be_called'] as bool,
      supportsVideoCalls: json['supports_video_calls'] as bool,
      hasPrivateCalls: json['has_private_calls'] as bool,
      hasPrivateForwards: json['has_private_forwards'] as bool,
      hasRestrictedVoiceAndVideoNoteMessages:
          json['has_restricted_voice_and_video_note_messages'] as bool,
      hasPostedToProfileStories: json['has_posted_to_profile_stories'] as bool,
      hasSponsoredMessagesEnabled:
          json['has_sponsored_messages_enabled'] as bool,
      needPhoneNumberPrivacyException:
          json['need_phone_number_privacy_exception'] as bool,
      setChatBackground: json['set_chat_background'] as bool,
      bio: FormattedText.fromJson(json['bio'] as Map<String, dynamic>?),
      birthdate: Birthdate.fromJson(json['birthdate'] as Map<String, dynamic>?),
      personalChatId: json['personal_chat_id'] as int,
      premiumGiftOptions: List<PremiumPaymentOption>.from(
          ((json['premium_gift_options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumPaymentOption.fromJson(item))
              .toList()),
      groupInCommonCount: json['group_in_common_count'] as int,
      businessInfo:
          BusinessInfo.fromJson(json['business_info'] as Map<String, dynamic>?),
      botInfo: BotInfo.fromJson(json['bot_info'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'personal_photo': personalPhoto?.toJson(),
        'photo': photo?.toJson(),
        'public_photo': publicPhoto?.toJson(),
        'block_list': blockList?.toJson(),
        'can_be_called': canBeCalled,
        'supports_video_calls': supportsVideoCalls,
        'has_private_calls': hasPrivateCalls,
        'has_private_forwards': hasPrivateForwards,
        'has_restricted_voice_and_video_note_messages':
            hasRestrictedVoiceAndVideoNoteMessages,
        'has_posted_to_profile_stories': hasPostedToProfileStories,
        'has_sponsored_messages_enabled': hasSponsoredMessagesEnabled,
        'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
        'set_chat_background': setChatBackground,
        'bio': bio?.toJson(),
        'birthdate': birthdate?.toJson(),
        'personal_chat_id': personalChatId,
        'premium_gift_options':
            premiumGiftOptions.map((item) => item.toJson()).toList(),
        'group_in_common_count': groupInCommonCount,
        'business_info': businessInfo?.toJson(),
        'bot_info': botInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
