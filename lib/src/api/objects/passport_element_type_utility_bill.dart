import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's utility bill
@immutable
class PassportElementTypeUtilityBill extends PassportElementType {
  const PassportElementTypeUtilityBill();

  static const String constructor = 'passportElementTypeUtilityBill';

  static PassportElementTypeUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeUtilityBill();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
