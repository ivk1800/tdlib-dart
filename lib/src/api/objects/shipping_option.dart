import '../tdapi.dart';

/// One shipping option
class ShippingOption extends TdObject {
  ShippingOption(
      {required this.id, required this.title, required this.priceParts});

  /// [id] Shipping option identifier
  final String id;

  /// [title] Option title
  final String title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;

  static const String CONSTRUCTOR = 'shippingOption';

  static ShippingOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ShippingOption(
        id: json['id'],
        title: json['title'],
        priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? [])
            .map((item) => LabeledPricePart.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'price_parts': priceParts.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
