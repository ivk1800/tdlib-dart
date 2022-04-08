import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Stripe payment provider
@immutable
class PaymentsProviderStripe extends TdObject {
  const PaymentsProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });

  /// [publishableKey] Stripe API publishable key
  final String publishableKey;

  /// [needCountry] True, if the user country must be provided
  final bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  final bool needCardholderName;

  static const String constructor = 'paymentsProviderStripe';

  static PaymentsProviderStripe? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentsProviderStripe(
      publishableKey: json['publishable_key'],
      needCountry: json['need_country'],
      needPostalCode: json['need_postal_code'],
      needCardholderName: json['need_cardholder_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'publishable_key': publishableKey,
        'need_country': needCountry,
        'need_postal_code': needPostalCode,
        'need_cardholder_name': needCardholderName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
