import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The gifts will be sorted by their number from the smallest to the largest
@immutable
class GiftForResaleOrderNumber extends GiftForResaleOrder {
  const GiftForResaleOrderNumber();

  static const String constructor = 'giftForResaleOrderNumber';

  static GiftForResaleOrderNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderNumber();
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
