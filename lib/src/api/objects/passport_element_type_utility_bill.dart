import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element containing the user's utility bill
class PassportElementTypeUtilityBill extends PassportElementType {
  const PassportElementTypeUtilityBill();

  static const String CONSTRUCTOR = 'passportElementTypeUtilityBill';

  static PassportElementTypeUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeUtilityBill();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
