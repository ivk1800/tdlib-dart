import '../tdapi.dart';

/// Contains full information about a user
class UserFullInfo extends TdObject {
  UserFullInfo(
      {this.photo,
      required this.isBlocked,
      required this.canBeCalled,
      required this.supportsVideoCalls,
      required this.hasPrivateCalls,
      required this.needPhoneNumberPrivacyException,
      required this.bio,
      required this.shareText,
      required this.groupInCommonCount,
      this.botInfo});

  /// [photo] User profile photo; may be null
  final ChatPhoto? photo;

  /// [isBlocked] True, if the user is blocked by the current user
  final bool isBlocked;

  /// [canBeCalled] True, if the user can be called
  final bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy
  /// settings
  final bool hasPrivateCalls;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to
  /// explicitly allow to share their phone number with the user when the method
  /// addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [bio] A short user bio
  final String bio;

  /// [shareText] For bots, the text that is included with the link when users
  /// share the bot
  final String shareText;

  /// [groupInCommonCount] Number of group chats where both the other user and
  /// the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [botInfo] If the user is a bot, information about the bot; may be null
  final BotInfo? botInfo;

  static const String CONSTRUCTOR = 'userFullInfo';

  static UserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserFullInfo(
        photo: ChatPhoto.fromJson(json['photo']),
        isBlocked: json['is_blocked'],
        canBeCalled: json['can_be_called'],
        supportsVideoCalls: json['supports_video_calls'],
        hasPrivateCalls: json['has_private_calls'],
        needPhoneNumberPrivacyException:
            json['need_phone_number_privacy_exception'],
        bio: json['bio'],
        shareText: json['share_text'],
        groupInCommonCount: json['group_in_common_count'],
        botInfo: BotInfo.fromJson(json['bot_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo?.toJson(),
        'is_blocked': this.isBlocked,
        'can_be_called': this.canBeCalled,
        'supports_video_calls': this.supportsVideoCalls,
        'has_private_calls': this.hasPrivateCalls,
        'need_phone_number_privacy_exception':
            this.needPhoneNumberPrivacyException,
        'bio': this.bio,
        'share_text': this.shareText,
        'group_in_common_count': this.groupInCommonCount,
        'bot_info': this.botInfo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
