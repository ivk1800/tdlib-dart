import '../tdapi.dart';

/// A Telegram Passport element containing the user's rental agreement
class PassportElementTypeRentalAgreement extends PassportElementType {
  const PassportElementTypeRentalAgreement();

  static const String CONSTRUCTOR = 'passportElementTypeRentalAgreement';

  static PassportElementTypeRentalAgreement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeRentalAgreement();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
