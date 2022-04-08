import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the results of the inline query. Use
/// sendInlineQueryResultMessage to send the result of the query
@immutable
class InlineQueryResults extends TdObject {
  const InlineQueryResults({
    required this.inlineQueryId,
    required this.nextOffset,
    required this.results,
    required this.switchPmText,
    required this.switchPmParameter,
  });

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [switchPmText] If non-empty, this text must be shown on the button, which
  /// opens a private chat with the bot and sends the bot a start message with
  /// the switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] Parameter for the bot start message
  final String switchPmParameter;

  static const String constructor = 'inlineQueryResults';

  static InlineQueryResults? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResults(
      inlineQueryId: int.tryParse(json['inline_query_id']) ?? 0,
      nextOffset: json['next_offset'],
      results: List<InlineQueryResult>.from((json['results'] ?? [])
          .map((item) => InlineQueryResult.fromJson(item))
          .toList()),
      switchPmText: json['switch_pm_text'],
      switchPmParameter: json['switch_pm_parameter'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_query_id': inlineQueryId,
        'next_offset': nextOffset,
        'results': results.map((item) => item.toJson()).toList(),
        'switch_pm_text': switchPmText,
        'switch_pm_parameter': switchPmParameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
