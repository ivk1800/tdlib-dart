import '../tdapi.dart';

/// Returns list of chat administrators with number of their invite links.
/// Requires owner privileges in the chat
/// Returns [ChatInviteLinkCounts]
class GetChatInviteLinkCounts extends TdFunction {
  GetChatInviteLinkCounts({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getChatInviteLinkCounts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
