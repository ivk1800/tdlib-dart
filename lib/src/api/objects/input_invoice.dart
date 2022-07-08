import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describe an invoice to process
@immutable
abstract class InputInvoice extends TdObject {
  const InputInvoice();

  static const String constructor = 'inputInvoice';

  /// Inherited by:
  /// [InputInvoiceMessage]
  /// [InputInvoiceName]
  static InputInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputInvoiceMessage.constructor:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.constructor:
        return InputInvoiceName.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
