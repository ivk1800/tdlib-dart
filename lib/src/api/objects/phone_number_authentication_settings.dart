import '../tdapi.dart';

/// Contains settings for the authentication of the user's phone number
class PhoneNumberAuthenticationSettings extends TdObject {
  PhoneNumberAuthenticationSettings(
      {required this.allowFlashCall,
      required this.isCurrentPhoneNumber,
      required this.allowSmsRetrieverApi});

  /// [allowFlashCall] Pass true if the authentication code may be sent via
  /// flash call to the specified phone number
  final bool allowFlashCall;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used
  /// on the current device
  final bool isCurrentPhoneNumber;

  /// [allowSmsRetrieverApi] For official applications only. True, if the
  /// application can use Android SMS Retriever API (requires Google Play
  /// Services
  final bool allowSmsRetrieverApi;

  static const String CONSTRUCTOR = 'phoneNumberAuthenticationSettings';

  static PhoneNumberAuthenticationSettings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PhoneNumberAuthenticationSettings(
        allowFlashCall: json['allow_flash_call'],
        isCurrentPhoneNumber: json['is_current_phone_number'],
        allowSmsRetrieverApi: json['allow_sms_retriever_api']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'allow_flash_call': this.allowFlashCall,
        'is_current_phone_number': this.isCurrentPhoneNumber,
        'allow_sms_retriever_api': this.allowSmsRetrieverApi,
        '@type': CONSTRUCTOR
      };
}
