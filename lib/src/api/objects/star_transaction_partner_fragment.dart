import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with Fragment
@immutable
class StarTransactionPartnerFragment extends StarTransactionPartner {
  const StarTransactionPartnerFragment({
    this.withdrawalState,
  });

  /// [withdrawalState] State of the withdrawal; may be null for refunds from
  /// Fragment or for Telegram Stars bought on Fragment
  final RevenueWithdrawalState? withdrawalState;

  static const String constructor = 'starTransactionPartnerFragment';

  static StarTransactionPartnerFragment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerFragment(
      withdrawalState: RevenueWithdrawalState.fromJson(
          json['withdrawal_state'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'withdrawal_state': withdrawalState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
