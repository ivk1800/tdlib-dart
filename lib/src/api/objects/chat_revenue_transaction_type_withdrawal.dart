import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a withdrawal of earnings
@immutable
class ChatRevenueTransactionTypeWithdrawal extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeWithdrawal({
    required this.withdrawalDate,
    required this.provider,
    required this.state,
  });

  /// [withdrawalDate] Point in time (Unix timestamp) when the earnings
  /// withdrawal started
  final int withdrawalDate;

  /// [provider] Name of the payment provider
  final String provider;

  /// [state] State of the withdrawal
  final RevenueWithdrawalState state;

  static const String constructor = 'chatRevenueTransactionTypeWithdrawal';

  static ChatRevenueTransactionTypeWithdrawal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeWithdrawal(
      withdrawalDate: json['withdrawal_date'] as int,
      provider: json['provider'] as String,
      state: RevenueWithdrawalState.fromJson(
          json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'withdrawal_date': withdrawalDate,
        'provider': provider,
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
