import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Portion of the price of a product (e.g., "delivery cost", "tax amount")
class LabeledPricePart extends TdObject {
  LabeledPricePart({required this.label, required this.amount});

  /// [label] Label for this portion of the product price
  final String label;

  /// [amount] Currency amount in the smallest units of the currency
  final int amount;

  static const String CONSTRUCTOR = 'labeledPricePart';

  static LabeledPricePart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LabeledPricePart(label: json['label'], amount: json['amount']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'label': this.label, 'amount': this.amount, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
