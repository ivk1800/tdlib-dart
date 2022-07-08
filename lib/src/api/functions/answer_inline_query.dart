import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the result of an inline query; for bots only
/// Returns [Ok]
@immutable
class AnswerInlineQuery extends TdFunction {
  const AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
    required this.switchPmText,
    required this.switchPmParameter,
  });

  /// [inlineQueryId] Identifier of the inline query
  final int inlineQueryId;

  /// [isPersonal] Pass true if results may be cached and returned only for the
  /// user that sent the query. By default, results may be returned to any user
  /// who sends the same query
  final bool isPersonal;

  /// [results] The results of the query
  final List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if
  /// there are no more results
  final String nextOffset;

  /// [switchPmText] If non-empty, this text must be shown on the button that
  /// opens a private chat with the bot and sends a start message to the bot
  /// with the parameter switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] The parameter for the bot start message
  final String switchPmParameter;

  static const String constructor = 'answerInlineQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_query_id': inlineQueryId,
        'is_personal': isPersonal,
        'results': results.map((item) => item.toJson()).toList(),
        'cache_time': cacheTime,
        'next_offset': nextOffset,
        'switch_pm_text': switchPmText,
        'switch_pm_parameter': switchPmParameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
