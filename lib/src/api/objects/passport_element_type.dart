import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the type of a Telegram Passport element
@immutable
abstract class PassportElementType extends TdObject {
  const PassportElementType();

  static const String constructor = 'passportElementType';

  /// Inherited by:
  /// [PassportElementTypeAddress]
  /// [PassportElementTypeBankStatement]
  /// [PassportElementTypeDriverLicense]
  /// [PassportElementTypeEmailAddress]
  /// [PassportElementTypeIdentityCard]
  /// [PassportElementTypeInternalPassport]
  /// [PassportElementTypePassportRegistration]
  /// [PassportElementTypePassport]
  /// [PassportElementTypePersonalDetails]
  /// [PassportElementTypePhoneNumber]
  /// [PassportElementTypeRentalAgreement]
  /// [PassportElementTypeTemporaryRegistration]
  /// [PassportElementTypeUtilityBill]
  static PassportElementType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementTypeAddress.constructor:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeBankStatement.constructor:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeDriverLicense.constructor:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeEmailAddress.constructor:
        return PassportElementTypeEmailAddress.fromJson(json);
      case PassportElementTypeIdentityCard.constructor:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.constructor:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypePassport.constructor:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypePassportRegistration.constructor:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypePersonalDetails.constructor:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePhoneNumber.constructor:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeRentalAgreement.constructor:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypeTemporaryRegistration.constructor:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypeUtilityBill.constructor:
        return PassportElementTypeUtilityBill.fromJson(json);
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
