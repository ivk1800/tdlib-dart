import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether an in-store purchase is possible. Must be called before any
/// in-store purchase
/// Returns [Ok]
@immutable
class CanPurchaseFromStore extends TdFunction {
  const CanPurchaseFromStore({
    required this.purpose,
  });

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'canPurchaseFromStore';

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
