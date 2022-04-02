import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sets the result of a shipping query; for bots only
/// Returns [Ok]
class AnswerShippingQuery extends TdFunction {
  AnswerShippingQuery(
      {required this.shippingQueryId,
      required this.shippingOptions,
      required this.errorMessage});

  /// [shippingQueryId] Identifier of the shipping query
  final int shippingQueryId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;

  static const String CONSTRUCTOR = 'answerShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'shipping_query_id': this.shippingQueryId,
        'shipping_options':
            shippingOptions.map((item) => item.toJson()).toList(),
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
