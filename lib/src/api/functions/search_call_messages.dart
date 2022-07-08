import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for call messages. Returns the results in reverse chronological
/// order (i. e., in order of decreasing message_id). For optimal performance,
/// the number of returned messages is chosen by TDLib
/// Returns [Messages]
@immutable
class SearchCallMessages extends TdFunction {
  const SearchCallMessages({
    required this.fromMessageId,
    required this.limit,
    required this.onlyMissed,
  });

  /// [fromMessageId] Identifier of the message from which to search; use 0 to
  /// get results from the last message
  final int fromMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  /// [onlyMissed] Pass true to search only for messages with missed/declined
  /// calls
  final bool onlyMissed;

  static const String constructor = 'searchCallMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'from_message_id': fromMessageId,
        'limit': limit,
        'only_missed': onlyMissed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
