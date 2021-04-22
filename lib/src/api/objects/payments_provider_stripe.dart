import '../tdapi.dart';

/// Stripe payment provider
class PaymentsProviderStripe extends TdObject {
  PaymentsProviderStripe(
      {required this.publishableKey,
      required this.needCountry,
      required this.needPostalCode,
      required this.needCardholderName});

  /// [publishableKey] Stripe API publishable key
  final String publishableKey;

  /// [needCountry] True, if the user country must be provided
  final bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  final bool needCardholderName;

  static const String CONSTRUCTOR = 'paymentsProviderStripe';

  static PaymentsProviderStripe? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentsProviderStripe(
        publishableKey: json['publishable_key'],
        needCountry: json['need_country'],
        needPostalCode: json['need_postal_code'],
        needCardholderName: json['need_cardholder_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'publishable_key': this.publishableKey,
        'need_country': this.needCountry,
        'need_postal_code': this.needPostalCode,
        'need_cardholder_name': this.needCardholderName,
        '@type': CONSTRUCTOR
      };
}
