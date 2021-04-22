import '../tdapi.dart';

/// A Telegram Passport element containing the user's temporary registration
class PassportElementTemporaryRegistration extends PassportElement {
  PassportElementTemporaryRegistration({required this.temporaryRegistration});

  /// [temporaryRegistration] Temporary registration
  final PersonalDocument temporaryRegistration;

  static const String CONSTRUCTOR = 'passportElementTemporaryRegistration';

  static PassportElementTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementTemporaryRegistration(
        temporaryRegistration:
            PersonalDocument.fromJson(json['temporary_registration'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'temporary_registration': this.temporaryRegistration.toJson(),
        '@type': CONSTRUCTOR
      };
}
