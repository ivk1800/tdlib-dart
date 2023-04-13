import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an invoice payment form
@immutable
class PaymentForm extends TdObject {
  const PaymentForm({
    required this.id,
    required this.invoice,
    required this.sellerBotUserId,
    required this.paymentProviderUserId,
    required this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
    required this.productTitle,
    required this.productDescription,
    this.productPhoto,
  });

  /// [id] The payment form identifier
  final int id;

  /// [invoice] Full information about the invoice
  final Invoice invoice;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [paymentProvider]_user_id User identifier of the payment provider bot
  final PaymentProvider paymentProvider;

  /// [additionalPaymentOptions] The list of additional payment options
  final List<PaymentOption> additionalPaymentOptions;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] The list of saved payment credentials
  final List<SavedCredentials> savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials, if sets
  /// up a 2-step verification password
  final bool needPassword;

  /// [productTitle] Product title
  final String productTitle;

  /// [productDescription] Product description
  final FormattedText productDescription;

  /// [productPhoto] Product photo; may be null
  final Photo? productPhoto;

  static const String constructor = 'paymentForm';

  static PaymentForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentForm(
      id: int.tryParse(json['id']) ?? 0,
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>?)!,
      sellerBotUserId: json['seller_bot_user_id'] as int,
      paymentProviderUserId: json['payment_provider_user_id'] as int,
      paymentProvider: PaymentProvider.fromJson(
          json['payment_provider'] as Map<String, dynamic>?)!,
      additionalPaymentOptions: List<PaymentOption>.from(
          ((json['additional_payment_options'] as List<dynamic>?) ??
                  <dynamic>[])
              .map((item) => PaymentOption.fromJson(item))
              .toList()),
      savedOrderInfo:
          OrderInfo.fromJson(json['saved_order_info'] as Map<String, dynamic>?),
      savedCredentials: List<SavedCredentials>.from(
          ((json['saved_credentials'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => SavedCredentials.fromJson(item))
              .toList()),
      canSaveCredentials: json['can_save_credentials'] as bool,
      needPassword: json['need_password'] as bool,
      productTitle: json['product_title'] as String,
      productDescription: FormattedText.fromJson(
          json['product_description'] as Map<String, dynamic>?)!,
      productPhoto:
          Photo.fromJson(json['product_photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'invoice': invoice.toJson(),
        'seller_bot_user_id': sellerBotUserId,
        'payment_provider_user_id': paymentProviderUserId,
        'payment_provider': paymentProvider.toJson(),
        'additional_payment_options':
            additionalPaymentOptions.map((item) => item.toJson()).toList(),
        'saved_order_info': savedOrderInfo?.toJson(),
        'saved_credentials':
            savedCredentials.map((item) => item.toJson()).toList(),
        'can_save_credentials': canSaveCredentials,
        'need_password': needPassword,
        'product_title': productTitle,
        'product_description': productDescription.toJson(),
        'product_photo': productPhoto?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
