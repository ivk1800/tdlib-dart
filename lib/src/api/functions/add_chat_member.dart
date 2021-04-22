import '../tdapi.dart';

/// Adds a new member to a chat. Members can't be added to private or secret
/// chats
/// Returns [Ok]
class AddChatMember extends TdFunction {
  AddChatMember(
      {required this.chatId, required this.userId, required this.forwardLimit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user
  final int userId;

  /// [forwardLimit] The number of earlier messages from the chat to be
  /// forwarded to the new member; up to 100. Ignored for supergroups and
  /// channels
  final int forwardLimit;

  static const String CONSTRUCTOR = 'addChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'forward_limit': this.forwardLimit,
        '@type': CONSTRUCTOR
      };
}
