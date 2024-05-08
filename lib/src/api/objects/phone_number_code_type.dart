import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of the request for which a code is sent to a phone number
@immutable
abstract class PhoneNumberCodeType extends TdObject {
  const PhoneNumberCodeType();

  static const String constructor = 'phoneNumberCodeType';

  /// Inherited by:
  /// [PhoneNumberCodeTypeChange]
  /// [PhoneNumberCodeTypeConfirmOwnership]
  /// [PhoneNumberCodeTypeVerify]
  static PhoneNumberCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PhoneNumberCodeTypeChange.constructor:
        return PhoneNumberCodeTypeChange.fromJson(json);
      case PhoneNumberCodeTypeConfirmOwnership.constructor:
        return PhoneNumberCodeTypeConfirmOwnership.fromJson(json);
      case PhoneNumberCodeTypeVerify.constructor:
        return PhoneNumberCodeTypeVerify.fromJson(json);
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
