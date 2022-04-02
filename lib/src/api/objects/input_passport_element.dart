import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a Telegram Passport element to be saved
abstract class InputPassportElement extends TdObject {
  const InputPassportElement();

  static const String CONSTRUCTOR = 'inputPassportElement';

  /// Inherited by:
  /// [InputPassportElementPersonalDetails]
  /// [InputPassportElementPassport]
  /// [InputPassportElementDriverLicense]
  /// [InputPassportElementIdentityCard]
  /// [InputPassportElementInternalPassport]
  /// [InputPassportElementAddress]
  /// [InputPassportElementUtilityBill]
  /// [InputPassportElementBankStatement]
  /// [InputPassportElementRentalAgreement]
  /// [InputPassportElementPassportRegistration]
  /// [InputPassportElementTemporaryRegistration]
  /// [InputPassportElementPhoneNumber]
  /// [InputPassportElementEmailAddress]
  static InputPassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputPassportElementPersonalDetails.CONSTRUCTOR:
        return InputPassportElementPersonalDetails.fromJson(json);
      case InputPassportElementPassport.CONSTRUCTOR:
        return InputPassportElementPassport.fromJson(json);
      case InputPassportElementDriverLicense.CONSTRUCTOR:
        return InputPassportElementDriverLicense.fromJson(json);
      case InputPassportElementIdentityCard.CONSTRUCTOR:
        return InputPassportElementIdentityCard.fromJson(json);
      case InputPassportElementInternalPassport.CONSTRUCTOR:
        return InputPassportElementInternalPassport.fromJson(json);
      case InputPassportElementAddress.CONSTRUCTOR:
        return InputPassportElementAddress.fromJson(json);
      case InputPassportElementUtilityBill.CONSTRUCTOR:
        return InputPassportElementUtilityBill.fromJson(json);
      case InputPassportElementBankStatement.CONSTRUCTOR:
        return InputPassportElementBankStatement.fromJson(json);
      case InputPassportElementRentalAgreement.CONSTRUCTOR:
        return InputPassportElementRentalAgreement.fromJson(json);
      case InputPassportElementPassportRegistration.CONSTRUCTOR:
        return InputPassportElementPassportRegistration.fromJson(json);
      case InputPassportElementTemporaryRegistration.CONSTRUCTOR:
        return InputPassportElementTemporaryRegistration.fromJson(json);
      case InputPassportElementPhoneNumber.CONSTRUCTOR:
        return InputPassportElementPhoneNumber.fromJson(json);
      case InputPassportElementEmailAddress.CONSTRUCTOR:
        return InputPassportElementEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
