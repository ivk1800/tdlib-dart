import '../tdapi.dart';

/// Answers a custom query; for bots only
/// Returns [Ok]
class AnswerCustomQuery extends TdFunction {
  AnswerCustomQuery({required this.customQueryId, required this.data});

  /// [customQueryId] Identifier of a custom query
  final int customQueryId;

  /// [data] JSON-serialized answer to the query
  final String data;

  static const String CONSTRUCTOR = 'answerCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'custom_query_id': this.customQueryId,
        'data': this.data,
        '@type': CONSTRUCTOR
      };
}
