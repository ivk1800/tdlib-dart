import '../tdapi.dart';

/// Searches for call messages. Returns the results in reverse chronological
/// order (i. e., in order of decreasing message_id). For optimal performance
/// the number of returned messages is chosen by the library
/// Returns [Messages]
class SearchCallMessages extends TdFunction {
  SearchCallMessages(
      {required this.fromMessageId,
      required this.limit,
      required this.onlyMissed});

  /// [fromMessageId] Identifier of the message from which to search; use 0 to
  /// get results from the last message
  final int fromMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer
  /// messages may be returned than specified by the limit, even if the end of
  /// the message history has not been reached
  final int limit;

  /// [onlyMissed] If true, returns only messages with missed calls
  final bool onlyMissed;

  static const String CONSTRUCTOR = 'searchCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'from_message_id': this.fromMessageId,
        'limit': this.limit,
        'only_missed': this.onlyMissed,
        '@type': CONSTRUCTOR
      };
}
