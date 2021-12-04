import '../tdapi.dart';

/// Sets the phone number of the user and sends an authentication code to the
/// user. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber,. or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitCode, authorizationStateWaitRegistration, or
/// authorizationStateWaitPassword
/// Returns [Ok]
class SetAuthenticationPhoneNumber extends TdFunction {
  SetAuthenticationPhoneNumber({required this.phoneNumber, this.settings});

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String CONSTRUCTOR = 'setAuthenticationPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'settings': this.settings?.toJson(),
        '@type': CONSTRUCTOR
      };
}
