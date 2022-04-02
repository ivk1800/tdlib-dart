import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a user contact
class Contact extends TdObject {
  Contact(
      {required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.vcard,
      required this.userId});

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [firstName] First name of the user; 1-255 characters in length
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in
  /// length
  final String vcard;

  /// [userId] Identifier of the user, if known; otherwise 0
  final int userId;

  static const String CONSTRUCTOR = 'contact';

  static Contact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Contact(
        phoneNumber: json['phone_number'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        vcard: json['vcard'],
        userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'first_name': this.firstName,
        'last_name': this.lastName,
        'vcard': this.vcard,
        'user_id': this.userId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
