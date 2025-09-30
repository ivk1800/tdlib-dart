import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sells a gift for Telegram Stars
/// Returns [Ok]
@immutable
class SellGift extends TdFunction {
  const SellGift({this.businessConnectionId, required this.receivedGiftId});

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  static const String constructor = 'sellGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'received_gift_id': receivedGiftId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
