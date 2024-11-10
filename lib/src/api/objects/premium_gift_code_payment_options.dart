import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for creating Telegram Premium gift codes or
/// Telegram Premium giveaway
@immutable
class PremiumGiftCodePaymentOptions extends TdObject {
  const PremiumGiftCodePaymentOptions({
    required this.options,
  });

  /// [options] The list of options
  final List<PremiumGiftCodePaymentOption> options;

  static const String constructor = 'premiumGiftCodePaymentOptions';

  static PremiumGiftCodePaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodePaymentOptions(
      options: List<PremiumGiftCodePaymentOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumGiftCodePaymentOption.fromJson(item))
              .toList()),
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
