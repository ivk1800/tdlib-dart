import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about Telegram Stars earned by a bot or a chat
@immutable
class StarRevenueStatus extends TdObject {
  const StarRevenueStatus({
    required this.totalAmount,
    required this.currentAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });

  /// [totalAmount] Total amount of Telegram Stars earned
  final StarAmount totalAmount;

  /// [currentAmount] The amount of Telegram Stars that aren't withdrawn yet
  final StarAmount currentAmount;

  /// [availableAmount] The amount of Telegram Stars that are available for
  /// withdrawal
  final StarAmount availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  /// [nextWithdrawalIn] Time left before the next withdrawal can be started, in
  /// seconds; 0 if withdrawal can be started now
  final int nextWithdrawalIn;

  static const String constructor = 'starRevenueStatus';

  static StarRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarRevenueStatus(
      totalAmount: StarAmount.fromJson(
        json['total_amount'] as Map<String, dynamic>?,
      )!,
      currentAmount: StarAmount.fromJson(
        json['current_amount'] as Map<String, dynamic>?,
      )!,
      availableAmount: StarAmount.fromJson(
        json['available_amount'] as Map<String, dynamic>?,
      )!,
      withdrawalEnabled: json['withdrawal_enabled'] as bool,
      nextWithdrawalIn: json['next_withdrawal_in'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_amount': totalAmount.toJson(),
    'current_amount': currentAmount.toJson(),
    'available_amount': availableAmount.toJson(),
    'withdrawal_enabled': withdrawalEnabled,
    'next_withdrawal_in': nextWithdrawalIn,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
