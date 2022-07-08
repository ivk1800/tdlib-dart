import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport element
@immutable
abstract class PassportElement extends TdObject {
  const PassportElement();

  static const String constructor = 'passportElement';

  /// Inherited by:
  /// [PassportElementAddress]
  /// [PassportElementBankStatement]
  /// [PassportElementDriverLicense]
  /// [PassportElementEmailAddress]
  /// [PassportElementIdentityCard]
  /// [PassportElementInternalPassport]
  /// [PassportElementPassportRegistration]
  /// [PassportElementPassport]
  /// [PassportElementPersonalDetails]
  /// [PassportElementPhoneNumber]
  /// [PassportElementRentalAgreement]
  /// [PassportElementTemporaryRegistration]
  /// [PassportElementUtilityBill]
  static PassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementAddress.constructor:
        return PassportElementAddress.fromJson(json);
      case PassportElementBankStatement.constructor:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementDriverLicense.constructor:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementEmailAddress.constructor:
        return PassportElementEmailAddress.fromJson(json);
      case PassportElementIdentityCard.constructor:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.constructor:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementPassport.constructor:
        return PassportElementPassport.fromJson(json);
      case PassportElementPassportRegistration.constructor:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementPersonalDetails.constructor:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPhoneNumber.constructor:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementRentalAgreement.constructor:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementTemporaryRegistration.constructor:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementUtilityBill.constructor:
        return PassportElementUtilityBill.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
