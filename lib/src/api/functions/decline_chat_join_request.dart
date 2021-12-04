import '../tdapi.dart';

/// Declines pending join request in a chat
/// Returns [Ok]
class DeclineChatJoinRequest extends TdFunction {
  DeclineChatJoinRequest({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user, which request will be declined
  final int userId;

  static const String CONSTRUCTOR = 'declineChatJoinRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'user_id': this.userId, '@type': CONSTRUCTOR};
}
