import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Cancels or re-enables Telegram Star subscription for a user; for bots only
/// Returns [Ok]
@immutable
class EditUserStarSubscription extends TdFunction {
  const EditUserStarSubscription({
    required this.userId,
    required this.telegramPaymentChargeId,
    required this.isCanceled,
  });

  /// [userId] User identifier
  final int userId;

  /// [telegramPaymentChargeId] Telegram payment identifier of the subscription
  final String telegramPaymentChargeId;

  /// [isCanceled] Pass true to cancel the subscription; pass false to allow the
  /// user to enable it
  final bool isCanceled;

  static const String constructor = 'editUserStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'is_canceled': isCanceled,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
