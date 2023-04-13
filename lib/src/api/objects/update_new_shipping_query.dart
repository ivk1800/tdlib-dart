import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new incoming shipping query; for bots only. Only for invoices with
/// flexible price
@immutable
class UpdateNewShippingQuery extends Update {
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address shippingAddress;

  static const String constructor = 'updateNewShippingQuery';

  static UpdateNewShippingQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewShippingQuery(
      id: int.tryParse(json['id']) ?? 0,
      senderUserId: json['sender_user_id'] as int,
      invoicePayload: json['invoice_payload'] as String,
      shippingAddress:
          Address.fromJson(json['shipping_address'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sender_user_id': senderUserId,
        'invoice_payload': invoicePayload,
        'shipping_address': shippingAddress.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
