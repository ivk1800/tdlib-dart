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
    required this.username,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    required this.isContact,
    required this.isMutualContact,
    required this.isVerified,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [username] Username of the user
  final String username;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the
  /// current user is a contact of the user
  final bool isMutualContact;

  /// [isVerified] True, if the user is verified
  final bool isVerified;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description
  /// of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this user as a fake account
  final bool isFake;

  /// [haveAccess] If false, the user is inaccessible, and the only information
  /// known about the user is inside this class. It can't be passed to any
  /// method except GetUser
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to
  /// bots
  final String languageCode;

  static const String constructor = 'user';

  static User? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      phoneNumber: json['phone_number'],
      status: UserStatus.fromJson(json['status'])!,
      profilePhoto: ProfilePhoto.fromJson(json['profile_photo']),
      isContact: json['is_contact'],
      isMutualContact: json['is_mutual_contact'],
      isVerified: json['is_verified'],
      isSupport: json['is_support'],
      restrictionReason: json['restriction_reason'],
      isScam: json['is_scam'],
      isFake: json['is_fake'],
      haveAccess: json['have_access'],
      type: UserType.fromJson(json['type'])!,
      languageCode: json['language_code'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'phone_number': phoneNumber,
        'status': status.toJson(),
        'profile_photo': profilePhoto?.toJson(),
        'is_contact': isContact,
        'is_mutual_contact': isMutualContact,
        'is_verified': isVerified,
        'is_support': isSupport,
        'restriction_reason': restrictionReason,
        'is_scam': isScam,
        'is_fake': isFake,
        'have_access': haveAccess,
        'type': type.toJson(),
        'language_code': languageCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
