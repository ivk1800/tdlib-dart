import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the results of the inline query. Use
/// sendInlineQueryResultMessage to send the result of the query
@immutable
class InlineQueryResults extends TdObject {
  const InlineQueryResults({
    required this.inlineQueryId,
    this.button,
    required this.results,
    required this.nextOffset,
  });

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [button] Button to be shown above inline query results; may be null
  final InlineQueryResultsButton? button;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  static const String constructor = 'inlineQueryResults';

  static InlineQueryResults? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResults(
      inlineQueryId: int.tryParse(json['inline_query_id']) ?? 0,
      button: InlineQueryResultsButton.fromJson(
          json['button'] as Map<String, dynamic>?),
      results: List<InlineQueryResult>.from(
          ((json['results'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InlineQueryResult.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_query_id': inlineQueryId.toString(),
        'button': button?.toJson(),
        'results': results.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
