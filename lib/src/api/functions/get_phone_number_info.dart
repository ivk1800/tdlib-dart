import '../tdapi.dart';

/// Returns information about a phone number by its prefix. Can be called
/// before authorization
/// Returns [PhoneNumberInfo]
class GetPhoneNumberInfo extends TdFunction {
  GetPhoneNumberInfo({required this.phoneNumberPrefix});

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  static const String CONSTRUCTOR = 'getPhoneNumberInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'phone_number_prefix': this.phoneNumberPrefix, '@type': CONSTRUCTOR};
}
