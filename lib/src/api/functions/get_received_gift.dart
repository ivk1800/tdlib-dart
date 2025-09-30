import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a received gift
/// Returns [ReceivedGift]
@immutable
class GetReceivedGift extends TdFunction {
  const GetReceivedGift({required this.receivedGiftId});

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  static const String constructor = 'getReceivedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'received_gift_id': receivedGiftId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
