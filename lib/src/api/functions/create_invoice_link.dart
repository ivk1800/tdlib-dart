import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a link for the given invoice; for bots only
/// Returns [HttpUrl]
@immutable
class CreateInvoiceLink extends TdFunction {
  const CreateInvoiceLink({
    required this.businessConnectionId,
    required this.invoice,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request
  final String businessConnectionId;

  /// [invoice] Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;

  static const String constructor = 'createInvoiceLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'invoice': invoice.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
