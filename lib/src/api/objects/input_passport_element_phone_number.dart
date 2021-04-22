import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's phone number
class InputPassportElementPhoneNumber extends InputPassportElement {
  InputPassportElementPhoneNumber({required this.phoneNumber});

  /// [phoneNumber] The phone number to be saved
  final String phoneNumber;

  static const String CONSTRUCTOR = 'inputPassportElementPhoneNumber';

  static InputPassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPhoneNumber(phoneNumber: json['phone_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'phone_number': this.phoneNumber, '@type': CONSTRUCTOR};
}
