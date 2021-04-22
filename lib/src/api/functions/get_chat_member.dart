import '../tdapi.dart';

/// Returns information about a single member of a chat
/// Returns [ChatMember]
class GetChatMember extends TdFunction {
  GetChatMember({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'getChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'user_id': this.userId, '@type': CONSTRUCTOR};
}
