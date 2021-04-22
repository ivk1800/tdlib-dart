import '../tdapi.dart';

/// A Telegram Passport element containing the user's address
class PassportElementTypeAddress extends PassportElementType {
  const PassportElementTypeAddress();

  static const String CONSTRUCTOR = 'passportElementTypeAddress';

  static PassportElementTypeAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeAddress();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
