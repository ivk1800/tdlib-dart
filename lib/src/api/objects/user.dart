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
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    required this.isVerified,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
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

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram
  /// Premium badge; may be null. For Telegram Premium users only
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the
  /// current user is a contact of the user
  final bool isMutualContact;

  /// [isCloseFriend] The user is a close friend of the current user; implies
  /// that the user is a contact
  final bool isCloseFriend;

  /// [isVerified] True, if the user is verified
  final bool isVerified;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description
  /// of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this user as a fake account
  final bool isFake;

  /// [hasActiveStories] True, if the user has non-expired stories available to
  /// the current user
  final bool hasActiveStories;

  /// [hasUnreadActiveStories] True, if the user has unread non-expired stories
  /// available to the current user
  final bool hasUnreadActiveStories;

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
      profilePhoto:
          ProfilePhoto.fromJson(json['profile_photo'] as Map<String, dynamic>?),
      emojiStatus:
          EmojiStatus.fromJson(json['emoji_status'] as Map<String, dynamic>?),
      isContact: json['is_contact'] as bool,
      isMutualContact: json['is_mutual_contact'] as bool,
      isCloseFriend: json['is_close_friend'] as bool,
      isVerified: json['is_verified'] as bool,
      isPremium: json['is_premium'] as bool,
      isSupport: json['is_support'] as bool,
      restrictionReason: json['restriction_reason'] as String,
      isScam: json['is_scam'] as bool,
      isFake: json['is_fake'] as bool,
      hasActiveStories: json['has_active_stories'] as bool,
      hasUnreadActiveStories: json['has_unread_active_stories'] as bool,
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
        'emoji_status': emojiStatus?.toJson(),
        'is_contact': isContact,
        'is_mutual_contact': isMutualContact,
        'is_close_friend': isCloseFriend,
        'is_verified': isVerified,
        'is_premium': isPremium,
        'is_support': isSupport,
        'restriction_reason': restrictionReason,
        'is_scam': isScam,
        'is_fake': isFake,
        'has_active_stories': hasActiveStories,
        'has_unread_active_stories': hasUnreadActiveStories,
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
