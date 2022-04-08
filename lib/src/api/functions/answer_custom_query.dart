import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Answers a custom query; for bots only
/// Returns [Ok]
@immutable
class AnswerCustomQuery extends TdFunction {
  const AnswerCustomQuery({
    required this.customQueryId,
    required this.data,
  });

  /// [customQueryId] Identifier of a custom query
  final int customQueryId;

  /// [data] JSON-serialized answer to the query
  final String data;

  static const String constructor = 'answerCustomQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_query_id': customQueryId,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
