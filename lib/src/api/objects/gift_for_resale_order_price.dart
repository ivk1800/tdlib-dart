import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The gifts will be sorted by their price from the lowest to the highest
@immutable
class GiftForResaleOrderPrice extends GiftForResaleOrder {
  const GiftForResaleOrderPrice();

  static const String constructor = 'giftForResaleOrderPrice';

  static GiftForResaleOrderPrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderPrice();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
