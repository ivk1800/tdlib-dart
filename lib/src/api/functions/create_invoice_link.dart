import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a link for the given invoice; for bots only
/// Returns [HttpUrl]
@immutable
class CreateInvoiceLink extends TdFunction {
  const CreateInvoiceLink({
    required this.invoice,
  });

  /// [invoice] Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;

  static const String constructor = 'createInvoiceLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice': invoice.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
