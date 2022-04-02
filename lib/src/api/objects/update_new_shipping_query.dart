import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new incoming shipping query; for bots only. Only for invoices with
/// flexible price
class UpdateNewShippingQuery extends Update {
  UpdateNewShippingQuery(
      {required this.id,
      required this.senderUserId,
      required this.invoicePayload,
      required this.shippingAddress});

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address shippingAddress;

  static const String CONSTRUCTOR = 'updateNewShippingQuery';

  static UpdateNewShippingQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewShippingQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        invoicePayload: json['invoice_payload'],
        shippingAddress: Address.fromJson(json['shipping_address'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'invoice_payload': this.invoicePayload,
        'shipping_address': this.shippingAddress.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
