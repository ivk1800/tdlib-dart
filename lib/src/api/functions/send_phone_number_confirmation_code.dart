import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends phone number confirmation code to handle links of the type
/// internalLinkTypePhoneNumberConfirmation
/// Returns [AuthenticationCodeInfo]
@immutable
class SendPhoneNumberConfirmationCode extends TdFunction {
  const SendPhoneNumberConfirmationCode({
    required this.hash,
    required this.phoneNumber,
    this.settings,
  });

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String constructor = 'sendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hash': hash,
        'phone_number': phoneNumber,
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
