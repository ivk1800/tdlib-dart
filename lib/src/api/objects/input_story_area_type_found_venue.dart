import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a venue found by the bot
/// getOption("venue_search_bot_username")
@immutable
class InputStoryAreaTypeFoundVenue extends InputStoryAreaType {
  const InputStoryAreaTypeFoundVenue({
    required this.queryId,
    required this.resultId,
  });

  /// [queryId] Identifier of the inline query, used to found the venue
  final int queryId;

  /// [resultId] Identifier of the inline query result
  final String resultId;

  static const String constructor = 'inputStoryAreaTypeFoundVenue';

  static InputStoryAreaTypeFoundVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeFoundVenue(
      queryId: int.tryParse(json['query_id']) ?? 0,
      resultId: json['result_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query_id': queryId.toString(),
        'result_id': resultId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
