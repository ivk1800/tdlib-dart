import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of common group chats with a given user. Chats are sorted
/// by their type and creation date
/// Returns [Chats]
@immutable
class GetGroupsInCommon extends TdFunction {
  const GetGroupsInCommon({
    required this.userId,
    required this.offsetChatId,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0
  /// for the first request
  final int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  final int limit;

  static const String constructor = 'getGroupsInCommon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'offset_chat_id': offsetChatId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
