import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a code to the specified phone number. Aborts previous phone number
/// verification if there was one. On success, returns information about the
/// sent code
/// Returns [AuthenticationCodeInfo]
@immutable
class SendPhoneNumberCode extends TdFunction {
  const SendPhoneNumberCode({
    required this.phoneNumber,
    this.settings,
    required this.type,
  });

  /// [phoneNumber] The phone number, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  /// [type] Type of the request for which the code is sent
  final PhoneNumberCodeType type;

  static const String constructor = 'sendPhoneNumberCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'settings': settings?.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
