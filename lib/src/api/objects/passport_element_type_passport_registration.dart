import '../tdapi.dart';

/// A Telegram Passport element containing the registration page of the user's
/// passport
class PassportElementTypePassportRegistration extends PassportElementType {
  const PassportElementTypePassportRegistration();

  static const String CONSTRUCTOR = 'passportElementTypePassportRegistration';

  static PassportElementTypePassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassportRegistration();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
