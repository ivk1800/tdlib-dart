import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport element to be saved
@immutable
abstract class InputPassportElement extends TdObject {
  const InputPassportElement();

  static const String constructor = 'inputPassportElement';

  /// Inherited by:
  /// [InputPassportElementAddress]
  /// [InputPassportElementBankStatement]
  /// [InputPassportElementDriverLicense]
  /// [InputPassportElementEmailAddress]
  /// [InputPassportElementIdentityCard]
  /// [InputPassportElementInternalPassport]
  /// [InputPassportElementPassportRegistration]
  /// [InputPassportElementPassport]
  /// [InputPassportElementPersonalDetails]
  /// [InputPassportElementPhoneNumber]
  /// [InputPassportElementRentalAgreement]
  /// [InputPassportElementTemporaryRegistration]
  /// [InputPassportElementUtilityBill]
  static InputPassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPassportElementAddress.constructor:
        return InputPassportElementAddress.fromJson(json);
      case InputPassportElementBankStatement.constructor:
        return InputPassportElementBankStatement.fromJson(json);
      case InputPassportElementDriverLicense.constructor:
        return InputPassportElementDriverLicense.fromJson(json);
      case InputPassportElementEmailAddress.constructor:
        return InputPassportElementEmailAddress.fromJson(json);
      case InputPassportElementIdentityCard.constructor:
        return InputPassportElementIdentityCard.fromJson(json);
      case InputPassportElementInternalPassport.constructor:
        return InputPassportElementInternalPassport.fromJson(json);
      case InputPassportElementPassport.constructor:
        return InputPassportElementPassport.fromJson(json);
      case InputPassportElementPassportRegistration.constructor:
        return InputPassportElementPassportRegistration.fromJson(json);
      case InputPassportElementPersonalDetails.constructor:
        return InputPassportElementPersonalDetails.fromJson(json);
      case InputPassportElementPhoneNumber.constructor:
        return InputPassportElementPhoneNumber.fromJson(json);
      case InputPassportElementRentalAgreement.constructor:
        return InputPassportElementRentalAgreement.fromJson(json);
      case InputPassportElementTemporaryRegistration.constructor:
        return InputPassportElementTemporaryRegistration.fromJson(json);
      case InputPassportElementUtilityBill.constructor:
        return InputPassportElementUtilityBill.fromJson(json);
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
