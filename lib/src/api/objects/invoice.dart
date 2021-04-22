import '../tdapi.dart';

/// Product invoice
class Invoice extends TdObject {
  Invoice(
      {required this.currency,
      required this.priceParts,
      required this.isTest,
      required this.needName,
      required this.needPhoneNumber,
      required this.needEmailAddress,
      required this.needShippingAddress,
      required this.sendPhoneNumberToProvider,
      required this.sendEmailAddressToProvider,
      required this.isFlexible});

  /// [currency] ISO 4217 currency code
  final String currency;

  /// [priceParts] A list of objects used to calculate the total price of the
  /// product
  final List<LabeledPricePart> priceParts;

  /// [isTest] True, if the payment is a test payment
  final bool isTest;

  /// [needName] True, if the user's name is needed for payment
  final bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  final bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  final bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for
  /// payment
  final bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent
  /// to the provider
  final bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be
  /// sent to the provider
  final bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  final bool isFlexible;

  static const String CONSTRUCTOR = 'invoice';

  static Invoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Invoice(
        currency: json['currency'],
        priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? [])
            .map((item) => LabeledPricePart.fromJson(item))
            .toList()),
        isTest: json['is_test'],
        needName: json['need_name'],
        needPhoneNumber: json['need_phone_number'],
        needEmailAddress: json['need_email_address'],
        needShippingAddress: json['need_shipping_address'],
        sendPhoneNumberToProvider: json['send_phone_number_to_provider'],
        sendEmailAddressToProvider: json['send_email_address_to_provider'],
        isFlexible: json['is_flexible']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'currency': this.currency,
        'price_parts': priceParts.map((item) => item.toJson()).toList(),
        'is_test': this.isTest,
        'need_name': this.needName,
        'need_phone_number': this.needPhoneNumber,
        'need_email_address': this.needEmailAddress,
        'need_shipping_address': this.needShippingAddress,
        'send_phone_number_to_provider': this.sendPhoneNumberToProvider,
        'send_email_address_to_provider': this.sendEmailAddressToProvider,
        'is_flexible': this.isFlexible,
        '@type': CONSTRUCTOR
      };
}
