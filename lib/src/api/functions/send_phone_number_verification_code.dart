import '../tdapi.dart';

/// Sends a code to verify a phone number to be added to a user's Telegram
/// Passport
/// Returns [AuthenticationCodeInfo]
class SendPhoneNumberVerificationCode extends TdFunction {
  SendPhoneNumberVerificationCode(
      {required this.phoneNumber, required this.settings});

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  final PhoneNumberAuthenticationSettings settings;

  static const String CONSTRUCTOR = 'sendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'settings': this.settings.toJson(),
        '@type': CONSTRUCTOR
      };
}
