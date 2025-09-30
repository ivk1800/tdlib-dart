import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends an upgraded gift to another user or a channel chat
/// Returns [Ok]
@immutable
class TransferGift extends TdFunction {
  const TransferGift({
    this.businessConnectionId,
    required this.receivedGiftId,
    required this.newOwnerId,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [newOwnerId] Identifier of the user or the channel chat that will receive
  /// the gift
  final MessageSender newOwnerId;

  /// [starCount] The amount of Telegram Stars required to pay for the transfer
  final int starCount;

  static const String constructor = 'transferGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'received_gift_id': receivedGiftId,
    'new_owner_id': newOwnerId.toJson(),
    'star_count': starCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
