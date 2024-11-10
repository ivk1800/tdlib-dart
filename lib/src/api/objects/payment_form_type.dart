import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of payment form
@immutable
abstract class PaymentFormType extends TdObject {
  const PaymentFormType();

  static const String constructor = 'paymentFormType';

  /// Inherited by:
  /// [PaymentFormTypeRegular]
  /// [PaymentFormTypeStars]
  static PaymentFormType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentFormTypeRegular.constructor:
        return PaymentFormTypeRegular.fromJson(json);
      case PaymentFormTypeStars.constructor:
        return PaymentFormTypeStars.fromJson(json);
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
