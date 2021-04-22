import '../tdapi.dart';

/// Sets the result of an inline query; for bots only
/// Returns [Ok]
class AnswerInlineQuery extends TdFunction {
  AnswerInlineQuery(
      {required this.inlineQueryId,
      required this.isPersonal,
      required this.results,
      required this.cacheTime,
      required this.nextOffset,
      required this.switchPmText,
      required this.switchPmParameter});

  /// [inlineQueryId] Identifier of the inline query
  final int inlineQueryId;

  /// [isPersonal] True, if the result of the query can be cached for the
  /// specified user
  final bool isPersonal;

  /// [results] The results of the query
  final List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if
  /// there are no more results
  final String nextOffset;

  /// [switchPmText] If non-empty, this text should be shown on the button that
  /// opens a private chat with the bot and sends a start message to the bot
  /// with the parameter switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] The parameter for the bot start message
  final String switchPmParameter;

  static const String CONSTRUCTOR = 'answerInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_query_id': this.inlineQueryId,
        'is_personal': this.isPersonal,
        'results': results.map((item) => item.toJson()).toList(),
        'cache_time': this.cacheTime,
        'next_offset': this.nextOffset,
        'switch_pm_text': this.switchPmText,
        'switch_pm_parameter': this.switchPmParameter,
        '@type': CONSTRUCTOR
      };
}
