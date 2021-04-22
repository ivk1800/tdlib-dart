import '../tdapi.dart';

/// Returns a list of common group chats with a given user. Chats are sorted
/// by their type and creation date
/// Returns [Chats]
class GetGroupsInCommon extends TdFunction {
  GetGroupsInCommon(
      {required this.userId, required this.offsetChatId, required this.limit});

  /// [userId] User identifier
  final int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0
  /// for the first request
  final int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  final int limit;

  static const String CONSTRUCTOR = 'getGroupsInCommon';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'offset_chat_id': this.offsetChatId,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
