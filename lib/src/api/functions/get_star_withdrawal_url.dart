import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a URL for Telegram Star withdrawal
/// Returns [HttpUrl]
@immutable
class GetStarWithdrawalUrl extends TdFunction {
  const GetStarWithdrawalUrl({
    required this.ownerId,
    required this.starCount,
    required this.password,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier
  /// of an owned bot, or identifier of an owned channel chat
  final MessageSender ownerId;

  /// [starCount] The number of Telegram Stars to withdraw. Must be at least
  /// getOption("star_withdrawal_count_min")
  final int starCount;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getStarWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'star_count': starCount,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
