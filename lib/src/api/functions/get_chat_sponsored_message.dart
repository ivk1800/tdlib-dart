import '../tdapi.dart';

/// Returns sponsored message to be shown in a chat; for channel chats only.
/// Returns a 404 error if there is no sponsored message in the chat
/// Returns [SponsoredMessage]
class GetChatSponsoredMessage extends TdFunction {
  GetChatSponsoredMessage({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String CONSTRUCTOR = 'getChatSponsoredMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
