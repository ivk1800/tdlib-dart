import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an invoice. Call getPaymentForm with the given
/// invoice name to process the link
@immutable
class InternalLinkTypeInvoice extends InternalLinkType {
  const InternalLinkTypeInvoice({
    required this.invoiceName,
  });

  /// [invoiceName] Name of the invoice
  final String invoiceName;

  static const String constructor = 'internalLinkTypeInvoice';

  static InternalLinkTypeInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeInvoice(
      invoiceName: json['invoice_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice_name': invoiceName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
