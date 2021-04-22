import '../tdapi.dart';

/// A Telegram Passport element containing the user's phone number
class PassportElementTypePhoneNumber extends PassportElementType {
  const PassportElementTypePhoneNumber();

  static const String CONSTRUCTOR = 'passportElementTypePhoneNumber';

  static PassportElementTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
