import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of service actions taken by chat members and administrators
/// in the last 48 hours. Available only for supergroups and channels.
/// Requires administrator rights. Returns results in reverse chronological
/// order (i. e., in order of decreasing event_id)
/// Returns [ChatEvents]
@immutable
class GetChatEventLog extends TdFunction {
  const GetChatEventLog({
    required this.chatId,
    required this.query,
    required this.fromEventId,
    required this.limit,
    this.filters,
    required this.userIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Search query by which to filter events
  final String query;

  /// [fromEventId] Identifier of an event from which to return results. Use 0
  /// to get results from the latest events
  final int fromEventId;

  /// [limit] The maximum number of events to return; up to 100
  final int limit;

  /// [filters] The types of events to return; pass null to get chat events of
  /// all types
  final ChatEventLogFilters? filters;

  /// [userIds] User identifiers by which to filter events. By default, events
  /// relating to all users will be returned
  final List<int> userIds;

  static const String constructor = 'getChatEventLog';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'query': query,
        'from_event_id': fromEventId,
        'limit': limit,
        'filters': filters?.toJson(),
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
