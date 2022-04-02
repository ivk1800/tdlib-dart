import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's phone number
class PassportElementPhoneNumber extends PassportElement {
  PassportElementPhoneNumber({required this.phoneNumber});

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String CONSTRUCTOR = 'passportElementPhoneNumber';

  static PassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPhoneNumber(phoneNumber: json['phone_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'phone_number': this.phoneNumber, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
