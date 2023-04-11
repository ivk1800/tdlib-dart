import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Portion of the price of a product (e.g., "delivery cost", "tax amount")
@immutable
class LabeledPricePart extends TdObject {
  const LabeledPricePart({
    required this.label,
    required this.amount,
  });

  /// [label] Label for this portion of the product price
  final String label;

  /// [amount] Currency amount in the smallest units of the currency
  final int amount;

  static const String constructor = 'labeledPricePart';

  static LabeledPricePart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LabeledPricePart(
      label: json['label'] as String,
      amount: json['amount'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
