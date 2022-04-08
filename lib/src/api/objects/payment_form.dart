import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an invoice payment form
@immutable
class PaymentForm extends TdObject {
  const PaymentForm({
    required this.id,
    required this.invoice,
    required this.url,
    required this.sellerBotUserId,
    required this.paymentsProviderUserId,
    required this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
  });

  /// [id] The payment form identifier
  final int id;

  /// [invoice] Full information of the invoice
  final Invoice invoice;

  /// [url] Payment form URL
  final String url;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  final int paymentsProviderUserId;

  /// [paymentsProvider]_user_id User identifier of the payment provider bot
  final PaymentsProviderStripe paymentsProvider;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] Information about saved card credentials; may be null
  final SavedCredentials? savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials
  /// protected by a password they set up
  final bool needPassword;

  static const String constructor = 'paymentForm';

  static PaymentForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentForm(
      id: int.tryParse(json['id']) ?? 0,
      invoice: Invoice.fromJson(json['invoice'])!,
      url: json['url'],
      sellerBotUserId: json['seller_bot_user_id'],
      paymentsProviderUserId: json['payments_provider_user_id'],
      paymentsProvider:
          PaymentsProviderStripe.fromJson(json['payments_provider'])!,
      savedOrderInfo: OrderInfo.fromJson(json['saved_order_info']),
      savedCredentials: SavedCredentials.fromJson(json['saved_credentials']),
      canSaveCredentials: json['can_save_credentials'],
      needPassword: json['need_password'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'invoice': invoice.toJson(),
        'url': url,
        'seller_bot_user_id': sellerBotUserId,
        'payments_provider_user_id': paymentsProviderUserId,
        'payments_provider': paymentsProvider.toJson(),
        'saved_order_info': savedOrderInfo?.toJson(),
        'saved_credentials': savedCredentials?.toJson(),
        'can_save_credentials': canSaveCredentials,
        'need_password': needPassword,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
