import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a revenue withdrawal
@immutable
abstract class RevenueWithdrawalState extends TdObject {
  const RevenueWithdrawalState();

  static const String constructor = 'revenueWithdrawalState';

  /// Inherited by:
  /// [RevenueWithdrawalStateFailed]
  /// [RevenueWithdrawalStatePending]
  /// [RevenueWithdrawalStateSucceeded]
  static RevenueWithdrawalState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RevenueWithdrawalStateFailed.constructor:
        return RevenueWithdrawalStateFailed.fromJson(json);
      case RevenueWithdrawalStatePending.constructor:
        return RevenueWithdrawalStatePending.fromJson(json);
      case RevenueWithdrawalStateSucceeded.constructor:
        return RevenueWithdrawalStateSucceeded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
