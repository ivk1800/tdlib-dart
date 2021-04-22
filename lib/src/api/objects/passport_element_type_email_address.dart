import '../tdapi.dart';

/// A Telegram Passport element containing the user's email address
class PassportElementTypeEmailAddress extends PassportElementType {
  const PassportElementTypeEmailAddress();

  static const String CONSTRUCTOR = 'passportElementTypeEmailAddress';

  static PassportElementTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeEmailAddress();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
