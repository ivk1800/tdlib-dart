import '../tdapi.dart';

/// Returns a list of service actions taken by chat members and administrators
/// in the last 48 hours. Available only for supergroups and channels.
/// Requires administrator rights. Returns results in reverse chronological
/// order (i. e., in order of decreasing event_id)
/// Returns [ChatEvents]
class GetChatEventLog extends TdFunction {
  GetChatEventLog(
      {required this.chatId,
      required this.query,
      required this.fromEventId,
      required this.limit,
      required this.filters,
      required this.userIds});

  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Search query by which to filter events
  final String query;

  /// [fromEventId] Identifier of an event from which to return results. Use 0
  /// to get results from the latest events
  final int fromEventId;

  /// [limit] The maximum number of events to return; up to 100
  final int limit;

  /// [filters] The types of events to return. By default, all types will be
  /// returned
  final ChatEventLogFilters filters;

  /// [userIds] User identifiers by which to filter events. By default, events
  /// relating to all users will be returned
  final List<int> userIds;

  static const String CONSTRUCTOR = 'getChatEventLog';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'query': this.query,
        'from_event_id': this.fromEventId,
        'limit': this.limit,
        'filters': this.filters.toJson(),
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
