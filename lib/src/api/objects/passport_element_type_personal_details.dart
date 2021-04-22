import '../tdapi.dart';

/// A Telegram Passport element containing the user's personal details
class PassportElementTypePersonalDetails extends PassportElementType {
  const PassportElementTypePersonalDetails();

  static const String CONSTRUCTOR = 'passportElementTypePersonalDetails';

  static PassportElementTypePersonalDetails? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePersonalDetails();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
