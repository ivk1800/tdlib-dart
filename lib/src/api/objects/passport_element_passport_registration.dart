import '../tdapi.dart';

/// A Telegram Passport element containing the user's passport registration
/// pages
class PassportElementPassportRegistration extends PassportElement {
  PassportElementPassportRegistration({required this.passportRegistration});

  /// [passportRegistration] Passport registration pages
  final PersonalDocument passportRegistration;

  static const String CONSTRUCTOR = 'passportElementPassportRegistration';

  static PassportElementPassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPassportRegistration(
        passportRegistration:
            PersonalDocument.fromJson(json['passport_registration'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'passport_registration': this.passportRegistration.toJson(),
        '@type': CONSTRUCTOR
      };
}
