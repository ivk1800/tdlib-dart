import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for buying or upgrading Telegram Premium for self
@immutable
class PremiumStatePaymentOption extends TdObject {
  const PremiumStatePaymentOption({
    required this.paymentOption,
    required this.isCurrent,
    required this.isUpgrade,
    required this.lastTransactionId,
  });

  /// [paymentOption] Information about the payment option
  final PremiumPaymentOption paymentOption;

  /// [isCurrent] True, if this is the currently used Telegram Premium
  /// subscription option
  final bool isCurrent;

  /// [isUpgrade] True, if the payment option can be used to upgrade the
  /// existing Telegram Premium subscription
  final bool isUpgrade;

  /// [lastTransactionId] Identifier of the last in-store transaction for the
  /// currently used option
  final String lastTransactionId;

  static const String constructor = 'premiumStatePaymentOption';

  static PremiumStatePaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumStatePaymentOption(
      paymentOption: PremiumPaymentOption.fromJson(
          json['payment_option'] as Map<String, dynamic>?)!,
      isCurrent: json['is_current'] as bool,
      isUpgrade: json['is_upgrade'] as bool,
      lastTransactionId: json['last_transaction_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'payment_option': paymentOption.toJson(),
        'is_current': isCurrent,
        'is_upgrade': isUpgrade,
        'last_transaction_id': lastTransactionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
