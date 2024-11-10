import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of Telegram Star transactions for the specified owner
/// Returns [StarTransactions]
@immutable
class GetStarTransactions extends TdFunction {
  const GetStarTransactions({
    required this.ownerId,
    required this.subscriptionId,
    this.direction,
    required this.offset,
    required this.limit,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be the
  /// identifier of the current user, identifier of an owned bot, or identifier
  /// of a channel chat with supergroupFullInfo.can_get_star_revenue_statistics
  /// == true
  final MessageSender ownerId;

  /// [subscriptionId] If non-empty, only transactions related to the Star
  /// Subscription will be returned
  final String subscriptionId;

  /// [direction] Direction of the transactions to receive; pass null to get all
  /// transactions
  final StarTransactionDirection? direction;

  /// [offset] Offset of the first transaction to return as received from the
  /// previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of transactions to return
  final int limit;

  static const String constructor = 'getStarTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'subscription_id': subscriptionId,
        'direction': direction?.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
