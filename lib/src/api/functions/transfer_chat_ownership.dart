import '../tdapi.dart';

/// Changes the owner of a chat. The current user must be a current owner of
/// the chat. Use the method canTransferOwnership to check whether the
/// ownership can be transferred from the current session. Available only for
/// supergroups and channel chats
/// Returns [Ok]
class TransferChatOwnership extends TdFunction {
  TransferChatOwnership(
      {required this.chatId, required this.userId, required this.password});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user to which transfer the ownership. The
  /// ownership can't be transferred to a bot or to a deleted user
  final int userId;

  /// [password] The password of the current user
  final String password;

  static const String CONSTRUCTOR = 'transferChatOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'password': this.password,
        '@type': CONSTRUCTOR
      };
}
