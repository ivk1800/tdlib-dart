import '../tdapi.dart';

/// Sets the result of a pre-checkout query; for bots only
/// Returns [Ok]
class AnswerPreCheckoutQuery extends TdFunction {
  AnswerPreCheckoutQuery(
      {required this.preCheckoutQueryId, required this.errorMessage});

  /// [preCheckoutQueryId] Identifier of the pre-checkout query
  final int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;

  static const String CONSTRUCTOR = 'answerPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'pre_checkout_query_id': this.preCheckoutQueryId,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR
      };
}
