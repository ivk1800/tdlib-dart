import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether Telegram Premium purchase is possible. Must be called
/// before in-store Premium purchase
/// Returns [Ok]
@immutable
class CanPurchasePremium extends TdFunction {
  const CanPurchasePremium({
    required this.purpose,
  });

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'canPurchasePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
