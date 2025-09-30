import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes order in which upgraded gifts for resale will be sorted
@immutable
abstract class GiftForResaleOrder extends TdObject {
  const GiftForResaleOrder();

  static const String constructor = 'giftForResaleOrder';

  /// Inherited by:
  /// [GiftForResaleOrderNumber]
  /// [GiftForResaleOrderPriceChangeDate]
  /// [GiftForResaleOrderPrice]
  static GiftForResaleOrder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftForResaleOrderNumber.constructor:
        return GiftForResaleOrderNumber.fromJson(json);
      case GiftForResaleOrderPrice.constructor:
        return GiftForResaleOrderPrice.fromJson(json);
      case GiftForResaleOrderPriceChangeDate.constructor:
        return GiftForResaleOrderPriceChangeDate.fromJson(json);
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
