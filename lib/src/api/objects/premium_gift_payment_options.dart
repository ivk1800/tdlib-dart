import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for gifting Telegram Premium to a user
@immutable
class PremiumGiftPaymentOptions extends TdObject {
  const PremiumGiftPaymentOptions({required this.options});

  /// [options] The list of options sorted by Telegram Premium subscription
  /// duration
  final List<PremiumGiftPaymentOption> options;

  static const String constructor = 'premiumGiftPaymentOptions';

  static PremiumGiftPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftPaymentOptions(
      options: List<PremiumGiftPaymentOption>.from(
        ((json['options'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => PremiumGiftPaymentOption.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
