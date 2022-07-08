import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an invoice payment form. This method must be called when the user
/// presses inlineKeyboardButtonBuy
/// Returns [PaymentForm]
@immutable
class GetPaymentForm extends TdFunction {
  const GetPaymentForm({
    required this.inputInvoice,
    this.theme,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [theme] Preferred payment form theme; pass null to use the default theme
  final ThemeParameters? theme;

  static const String constructor = 'getPaymentForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_invoice': inputInvoice.toJson(),
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
