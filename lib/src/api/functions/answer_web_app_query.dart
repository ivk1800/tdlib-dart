import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the result of interaction with a Web App and sends corresponding
/// message on behalf of the user to the chat from which the query originated;
/// for bots only
/// Returns [SentWebAppMessage]
@immutable
class AnswerWebAppQuery extends TdFunction {
  const AnswerWebAppQuery({
    required this.webAppQueryId,
    required this.result,
  });

  /// [webAppQueryId] Identifier of the Web App query
  final String webAppQueryId;

  /// [result] The result of the query
  final InputInlineQueryResult result;

  static const String constructor = 'answerWebAppQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'web_app_query_id': webAppQueryId,
        'result': result.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
