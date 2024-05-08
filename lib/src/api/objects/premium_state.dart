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
    required this.businessAnimations,
  });

  /// [state] Text description of the state of the current Premium subscription;
  /// may be empty if the current user has no Telegram Premium subscription
  final FormattedText state;

  /// [paymentOptions] The list of available options for buying Telegram Premium
  final List<PremiumStatePaymentOption> paymentOptions;

  /// [animations] The list of available promotion animations for Premium
  /// features
  final List<PremiumFeaturePromotionAnimation> animations;

  /// [businessAnimations] The list of available promotion animations for
  /// Business features
  final List<BusinessFeaturePromotionAnimation> businessAnimations;

  static const String constructor = 'premiumState';

  static PremiumState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumState(
      state: FormattedText.fromJson(json['state'] as Map<String, dynamic>?)!,
      paymentOptions: List<PremiumStatePaymentOption>.from(
          ((json['payment_options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumStatePaymentOption.fromJson(item))
              .toList()),
      animations: List<PremiumFeaturePromotionAnimation>.from(
          ((json['animations'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumFeaturePromotionAnimation.fromJson(item))
              .toList()),
      businessAnimations: List<BusinessFeaturePromotionAnimation>.from(
          ((json['business_animations'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BusinessFeaturePromotionAnimation.fromJson(item))
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
        'business_animations':
            businessAnimations.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
