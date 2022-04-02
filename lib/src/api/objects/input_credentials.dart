import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about the payment method chosen by the user
abstract class InputCredentials extends TdObject {
  const InputCredentials();

  static const String CONSTRUCTOR = 'inputCredentials';

  /// Inherited by:
  /// [InputCredentialsSaved]
  /// [InputCredentialsNew]
  /// [InputCredentialsApplePay]
  /// [InputCredentialsGooglePay]
  static InputCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputCredentialsSaved.CONSTRUCTOR:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.CONSTRUCTOR:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsApplePay.CONSTRUCTOR:
        return InputCredentialsApplePay.fromJson(json);
      case InputCredentialsGooglePay.CONSTRUCTOR:
        return InputCredentialsGooglePay.fromJson(json);
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
