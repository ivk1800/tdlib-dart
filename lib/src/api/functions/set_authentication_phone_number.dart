import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the phone number of the user and sends an authentication code to the
/// user. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber,. or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitCode, authorizationStateWaitRegistration, or
/// authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class SetAuthenticationPhoneNumber extends TdFunction {
  const SetAuthenticationPhoneNumber({
    required this.phoneNumber,
    this.settings,
  });

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String constructor = 'setAuthenticationPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
