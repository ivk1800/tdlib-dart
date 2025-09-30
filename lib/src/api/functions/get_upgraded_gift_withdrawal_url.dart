import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a URL for upgraded gift withdrawal in the TON blockchain as an
/// NFT; requires owner privileges for gifts owned by a chat
/// Returns [HttpUrl]
@immutable
class GetUpgradedGiftWithdrawalUrl extends TdFunction {
  const GetUpgradedGiftWithdrawalUrl({
    required this.receivedGiftId,
    required this.password,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getUpgradedGiftWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'received_gift_id': receivedGiftId,
    'password': password,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
