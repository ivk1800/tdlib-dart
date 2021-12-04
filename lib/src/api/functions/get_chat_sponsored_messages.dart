import '../tdapi.dart';

/// Returns sponsored messages to be shown in a chat; for channel chats only
/// Returns [SponsoredMessages]
class GetChatSponsoredMessages extends TdFunction {
  GetChatSponsoredMessages({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String CONSTRUCTOR = 'getChatSponsoredMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
