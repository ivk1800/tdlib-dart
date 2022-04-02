import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sends a code to verify a phone number to be added to a user's Telegram
/// Passport
/// Returns [AuthenticationCodeInfo]
class SendPhoneNumberVerificationCode extends TdFunction {
  SendPhoneNumberVerificationCode({required this.phoneNumber, this.settings});

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String CONSTRUCTOR = 'sendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'settings': this.settings?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
