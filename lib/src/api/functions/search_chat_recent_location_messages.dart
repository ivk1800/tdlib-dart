import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the recent locations of chat members that were
/// sent to the chat. Returns up to 1 location message per user
/// Returns [Messages]
@immutable
class SearchChatRecentLocationMessages extends TdFunction {
  const SearchChatRecentLocationMessages({
    required this.chatId,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [limit] The maximum number of messages to be returned
  final int limit;

  static const String constructor = 'searchChatRecentLocationMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
