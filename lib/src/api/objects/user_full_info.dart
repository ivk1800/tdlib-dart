import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about a user
@immutable
class UserFullInfo extends TdObject {
  const UserFullInfo({
    this.photo,
    required this.isBlocked,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.needPhoneNumberPrivacyException,
    this.bio,
    required this.groupInCommonCount,
    this.botInfo,
  });

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

  /// [hasPrivateForwards] True, if the user can't be linked in forwarded
  /// messages due to their privacy settings
  final bool hasPrivateForwards;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to
  /// explicitly allow to share their phone number with the user when the method
  /// addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [bio] A short user bio; may be null for bots
  final FormattedText? bio;

  /// [groupInCommonCount] Number of group chats where both the other user and
  /// the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [botInfo] For bots, information about the bot; may be null
  final BotInfo? botInfo;

  static const String constructor = 'userFullInfo';

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
      hasPrivateForwards: json['has_private_forwards'],
      needPhoneNumberPrivacyException:
          json['need_phone_number_privacy_exception'],
      bio: FormattedText.fromJson(json['bio']),
      groupInCommonCount: json['group_in_common_count'],
      botInfo: BotInfo.fromJson(json['bot_info']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'is_blocked': isBlocked,
        'can_be_called': canBeCalled,
        'supports_video_calls': supportsVideoCalls,
        'has_private_calls': hasPrivateCalls,
        'has_private_forwards': hasPrivateForwards,
        'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
        'bio': bio?.toJson(),
        'group_in_common_count': groupInCommonCount,
        'bot_info': botInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
