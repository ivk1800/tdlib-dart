import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Withdrawal is pending
@immutable
class RevenueWithdrawalStatePending extends RevenueWithdrawalState {
  const RevenueWithdrawalStatePending();

  static const String constructor = 'revenueWithdrawalStatePending';

  static RevenueWithdrawalStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const RevenueWithdrawalStatePending();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
