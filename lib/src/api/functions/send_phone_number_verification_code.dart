import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a code to verify a phone number to be added to a user's Telegram
/// Passport
/// Returns [AuthenticationCodeInfo]
@immutable
class SendPhoneNumberVerificationCode extends TdFunction {
  const SendPhoneNumberVerificationCode({
    required this.phoneNumber,
    this.settings,
  });

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String constructor = 'sendPhoneNumberVerificationCode';

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
