import '../tdapi.dart';

/// A Telegram Passport element containing the user's passport
class PassportElementTypePassport extends PassportElementType {
  const PassportElementTypePassport();

  static const String CONSTRUCTOR = 'passportElementTypePassport';

  static PassportElementTypePassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassport();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
