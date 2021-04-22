import '../tdapi.dart';

/// Contains information about a Telegram Passport element
abstract class PassportElement extends TdObject {
  const PassportElement();

  static const String CONSTRUCTOR = 'passportElement';

  /// Inherited by:
  /// [PassportElementPersonalDetails]
  /// [PassportElementPassport]
  /// [PassportElementDriverLicense]
  /// [PassportElementIdentityCard]
  /// [PassportElementInternalPassport]
  /// [PassportElementAddress]
  /// [PassportElementUtilityBill]
  /// [PassportElementBankStatement]
  /// [PassportElementRentalAgreement]
  /// [PassportElementPassportRegistration]
  /// [PassportElementTemporaryRegistration]
  /// [PassportElementPhoneNumber]
  /// [PassportElementEmailAddress]
  static PassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PassportElementPersonalDetails.CONSTRUCTOR:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPassport.CONSTRUCTOR:
        return PassportElementPassport.fromJson(json);
      case PassportElementDriverLicense.CONSTRUCTOR:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementIdentityCard.CONSTRUCTOR:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.CONSTRUCTOR:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementAddress.CONSTRUCTOR:
        return PassportElementAddress.fromJson(json);
      case PassportElementUtilityBill.CONSTRUCTOR:
        return PassportElementUtilityBill.fromJson(json);
      case PassportElementBankStatement.CONSTRUCTOR:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementRentalAgreement.CONSTRUCTOR:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementPassportRegistration.CONSTRUCTOR:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementPhoneNumber.CONSTRUCTOR:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementEmailAddress.CONSTRUCTOR:
        return PassportElementEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
