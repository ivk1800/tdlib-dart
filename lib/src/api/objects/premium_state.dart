import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains state of Telegram Premium subscription and promotion videos for
/// Premium features
@immutable
class PremiumState extends TdObject {
  const PremiumState({
    required this.state,
    required this.paymentOptions,
    required this.animations,
  });

  /// [state] Text description of the state of the current Premium subscription;
  /// may be empty if the current user has no Telegram Premium subscription
  final FormattedText state;

  /// [paymentOptions] The list of available options for buying Telegram Premium
  final List<PremiumPaymentOption> paymentOptions;

  /// [animations] The list of available promotion animations for Premium
  /// features
  final List<PremiumFeaturePromotionAnimation> animations;

  static const String constructor = 'premiumState';

  static PremiumState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumState(
      state: FormattedText.fromJson(json['state'])!,
      paymentOptions: List<PremiumPaymentOption>.from(
          (json['payment_options'] ?? [])
              .map((item) => PremiumPaymentOption.fromJson(item))
              .toList()),
      animations: List<PremiumFeaturePromotionAnimation>.from(
          (json['animations'] ?? [])
              .map((item) => PremiumFeaturePromotionAnimation.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state': state.toJson(),
        'payment_options': paymentOptions.map((item) => item.toJson()).toList(),
        'animations': animations.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
