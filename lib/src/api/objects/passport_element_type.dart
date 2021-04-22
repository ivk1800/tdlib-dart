import '../tdapi.dart';

/// Contains the type of a Telegram Passport element
abstract class PassportElementType extends TdObject {
  const PassportElementType();

  static const String CONSTRUCTOR = 'passportElementType';

  /// Inherited by:
  /// [PassportElementTypePersonalDetails]
  /// [PassportElementTypePassport]
  /// [PassportElementTypeDriverLicense]
  /// [PassportElementTypeIdentityCard]
  /// [PassportElementTypeInternalPassport]
  /// [PassportElementTypeAddress]
  /// [PassportElementTypeUtilityBill]
  /// [PassportElementTypeBankStatement]
  /// [PassportElementTypeRentalAgreement]
  /// [PassportElementTypePassportRegistration]
  /// [PassportElementTypeTemporaryRegistration]
  /// [PassportElementTypePhoneNumber]
  /// [PassportElementTypeEmailAddress]
  static PassportElementType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
