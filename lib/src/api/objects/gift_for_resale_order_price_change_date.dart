import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The gifts will be sorted by the last date when their price was changed
/// from the newest to the oldest
@immutable
class GiftForResaleOrderPriceChangeDate extends GiftForResaleOrder {
  const GiftForResaleOrderPriceChangeDate();

  static const String constructor = 'giftForResaleOrderPriceChangeDate';

  static GiftForResaleOrderPriceChangeDate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderPriceChangeDate();
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
