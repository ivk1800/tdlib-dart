import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for outgoing messages with content of the type messageDocument in
/// all chats except secret chats. Returns the results in reverse
/// chronological order
/// Returns [FoundMessages]
@immutable
class SearchOutgoingDocumentMessages extends TdFunction {
  const SearchOutgoingDocumentMessages({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for in document file name and message caption
  final String query;

  /// [limit] The maximum number of messages to be returned; up to 100
  final int limit;

  static const String constructor = 'searchOutgoingDocumentMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
