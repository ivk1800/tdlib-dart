import '../tdapi.dart';

/// A Telegram Passport element containing the user's internal passport
class PassportElementTypeInternalPassport extends PassportElementType {
  const PassportElementTypeInternalPassport();

  static const String CONSTRUCTOR = 'passportElementTypeInternalPassport';

  static PassportElementTypeInternalPassport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeInternalPassport();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
