import '../tdapi.dart';

/// Approves pending join request in a chat
/// Returns [Ok]
class ApproveChatJoinRequest extends TdFunction {
  ApproveChatJoinRequest({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user, which request will be approved
  final int userId;

  static const String CONSTRUCTOR = 'approveChatJoinRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'user_id': this.userId, '@type': CONSTRUCTOR};
}
