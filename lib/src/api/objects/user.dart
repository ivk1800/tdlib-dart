import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a user
@immutable
class User extends TdObject {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.usernames,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    this.verificationStatus,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    required this.restrictsNewChats,
    required this.paidMessageStarCount,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [usernames] Usernames of the user; may be null
  final Usernames? usernames;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [accentColorId] Identifier of the accent color for name, and backgrounds
  /// of profile photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] Identifier of the accent color for the user's
  /// profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the user's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram
  /// Premium badge; may be null
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the
  /// current user is a contact of the user
  final bool isMutualContact;

  /// [isCloseFriend] The user is a close friend of the current user; implies
  /// that the user is a contact
  final bool isCloseFriend;

  /// [verificationStatus] Information about verification status of the user;
  /// may be null if none
  final VerificationStatus? verificationStatus;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description
  /// of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [hasActiveStories] True, if the user has non-expired stories available to
  /// the current user
  final bool hasActiveStories;

  /// [hasUnreadActiveStories] True, if the user has unread non-expired stories
  /// available to the current user
  final bool hasUnreadActiveStories;

  /// [restrictsNewChats] True, if the user may restrict new chats with
  /// non-contacts. Use canSendMessageToUser to check whether the current user
  /// can message the user or try to create a chat with them
  final bool restrictsNewChats;

  /// [paidMessageStarCount] Number of Telegram Stars that must be paid by
  /// general user for each sent message to the user. If positive and
  /// userFullInfo is unknown, use canSendMessageToUser to check whether the
  /// current user must pay
  final int paidMessageStarCount;

  /// [haveAccess] If false, the user is inaccessible, and the only information
  /// known about the user is inside this class. Identifier of the user can't be
  /// passed to any method
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to
  /// bots
  final String languageCode;

  /// [addedToAttachmentMenu] True, if the user added the current bot to
  /// attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  static const String constructor = 'user';

  static User? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return User(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      usernames: Usernames.fromJson(json['usernames'] as Map<String, dynamic>?),
      phoneNumber: json['phone_number'] as String,
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
      profilePhoto: ProfilePhoto.fromJson(
        json['profile_photo'] as Map<String, dynamic>?,
      ),
      accentColorId: json['accent_color_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
      profileAccentColorId: json['profile_accent_color_id'] as int,
      profileBackgroundCustomEmojiId:
          int.tryParse(json['profile_background_custom_emoji_id']) ?? 0,
      emojiStatus: EmojiStatus.fromJson(
        json['emoji_status'] as Map<String, dynamic>?,
      ),
      isContact: json['is_contact'] as bool,
      isMutualContact: json['is_mutual_contact'] as bool,
      isCloseFriend: json['is_close_friend'] as bool,
      verificationStatus: VerificationStatus.fromJson(
        json['verification_status'] as Map<String, dynamic>?,
      ),
      isPremium: json['is_premium'] as bool,
      isSupport: json['is_support'] as bool,
      restrictionReason: json['restriction_reason'] as String,
      hasActiveStories: json['has_active_stories'] as bool,
      hasUnreadActiveStories: json['has_unread_active_stories'] as bool,
      restrictsNewChats: json['restricts_new_chats'] as bool,
      paidMessageStarCount: json['paid_message_star_count'] as int,
      haveAccess: json['have_access'] as bool,
      type: UserType.fromJson(json['type'] as Map<String, dynamic>?)!,
      languageCode: json['language_code'] as String,
      addedToAttachmentMenu: json['added_to_attachment_menu'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'first_name': firstName,
    'last_name': lastName,
    'usernames': usernames?.toJson(),
    'phone_number': phoneNumber,
    'status': status.toJson(),
    'profile_photo': profilePhoto?.toJson(),
    'accent_color_id': accentColorId,
    'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
    'profile_accent_color_id': profileAccentColorId,
    'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId
        .toString(),
    'emoji_status': emojiStatus?.toJson(),
    'is_contact': isContact,
    'is_mutual_contact': isMutualContact,
    'is_close_friend': isCloseFriend,
    'verification_status': verificationStatus?.toJson(),
    'is_premium': isPremium,
    'is_support': isSupport,
    'restriction_reason': restrictionReason,
    'has_active_stories': hasActiveStories,
    'has_unread_active_stories': hasUnreadActiveStories,
    'restricts_new_chats': restrictsNewChats,
    'paid_message_star_count': paidMessageStarCount,
    'have_access': haveAccess,
    'type': type.toJson(),
    'language_code': languageCode,
    'added_to_attachment_menu': addedToAttachmentMenu,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
