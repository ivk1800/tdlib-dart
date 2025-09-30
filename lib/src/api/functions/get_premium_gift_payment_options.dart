import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available options for gifting Telegram Premium to a user
/// Returns [PremiumGiftPaymentOptions]
@immutable
class GetPremiumGiftPaymentOptions extends TdFunction {
  const GetPremiumGiftPaymentOptions();

  static const String constructor = 'getPremiumGiftPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
