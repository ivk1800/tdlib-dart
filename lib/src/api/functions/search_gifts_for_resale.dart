import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns upgraded gifts that can be bought from other owners
/// Returns [GiftsForResale]
@immutable
class SearchGiftsForResale extends TdFunction {
  const SearchGiftsForResale({
    required this.giftId,
    required this.order,
    required this.attributes,
    required this.offset,
    required this.limit,
  });

  /// [giftId] Identifier of the regular gift that was upgraded to a unique gift
  final int giftId;

  /// [order] Order in which the results will be sorted
  final GiftForResaleOrder order;

  /// [attributes] Attributes used to filter received gifts. If multiple
  /// attributes of the same type are specified, then all of them are allowed.
  /// If none attributes of specific type are specified, then all values for
  /// this attribute type are allowed
  final List<UpgradedGiftAttributeId> attributes;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request with the same order and attributes; use empty string to get the
  /// first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to return
  final int limit;

  static const String constructor = 'searchGiftsForResale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_id': giftId,
    'order': order.toJson(),
    'attributes': attributes.map((item) => item.toJson()).toList(),
    'offset': offset,
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
