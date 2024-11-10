import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The payment form is for a regular payment
@immutable
class PaymentFormTypeRegular extends PaymentFormType {
  const PaymentFormTypeRegular({
    required this.invoice,
    required this.paymentProviderUserId,
    required this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
  });

  /// [invoice] Full information about the invoice
  final Invoice invoice;

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [paymentProvider] Information about the payment provider
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

  static const String constructor = 'paymentFormTypeRegular';

  static PaymentFormTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeRegular(
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>?)!,
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
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice': invoice.toJson(),
        'payment_provider_user_id': paymentProviderUserId,
        'payment_provider': paymentProvider.toJson(),
        'additional_payment_options':
            additionalPaymentOptions.map((item) => item.toJson()).toList(),
        'saved_order_info': savedOrderInfo?.toJson(),
        'saved_credentials':
            savedCredentials.map((item) => item.toJson()).toList(),
        'can_save_credentials': canSaveCredentials,
        'need_password': needPassword,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
