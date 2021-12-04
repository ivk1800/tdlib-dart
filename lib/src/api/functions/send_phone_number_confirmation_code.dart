import '../tdapi.dart';

/// Sends phone number confirmation code to handle links of the type
/// internalLinkTypePhoneNumberConfirmation
/// Returns [AuthenticationCodeInfo]
class SendPhoneNumberConfirmationCode extends TdFunction {
  SendPhoneNumberConfirmationCode(
      {required this.hash, required this.phoneNumber, this.settings});

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String CONSTRUCTOR = 'sendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'hash': this.hash,
        'phone_number': this.phoneNumber,
        'settings': this.settings?.toJson(),
        '@type': CONSTRUCTOR
      };
}
