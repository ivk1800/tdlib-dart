import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends an upgraded gift that is available for resale to another user or
/// channel chat; gifts already owned by the current user must be transferred
/// using transferGift and can't be passed to the method
/// Returns [Ok]
@immutable
class SendResoldGift extends TdFunction {
  const SendResoldGift({
    required this.giftName,
    required this.ownerId,
    required this.starCount,
  });

  /// [giftName] Name of the upgraded gift to send
  final String giftName;

  /// [ownerId] Identifier of the user or the channel chat that will receive the
  /// gift
  final MessageSender ownerId;

  /// [starCount] The amount of Telegram Stars required to pay for the gift
  final int starCount;

  static const String constructor = 'sendResoldGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_name': giftName,
    'owner_id': ownerId.toJson(),
    'star_count': starCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
