import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about Telegram Stars earned by a bot or a chat
@immutable
class StarRevenueStatus extends TdObject {
  const StarRevenueStatus({
    required this.totalCount,
    required this.currentCount,
    required this.availableCount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });

  /// [totalCount] Total number of Telegram Stars earned
  final int totalCount;

  /// [currentCount] The number of Telegram Stars that aren't withdrawn yet
  final int currentCount;

  /// [availableCount] The number of Telegram Stars that are available for
  /// withdrawal
  final int availableCount;

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
      totalCount: json['total_count'] as int,
      currentCount: json['current_count'] as int,
      availableCount: json['available_count'] as int,
      withdrawalEnabled: json['withdrawal_enabled'] as bool,
      nextWithdrawalIn: json['next_withdrawal_in'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'current_count': currentCount,
        'available_count': availableCount,
        'withdrawal_enabled': withdrawalEnabled,
        'next_withdrawal_in': nextWithdrawalIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
