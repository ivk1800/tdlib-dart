import '../tdapi.dart';

/// Returns chat lists to which the chat can be added. This is an offline
/// request
/// Returns [ChatLists]
class GetChatListsToAddChat extends TdFunction {
  GetChatListsToAddChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getChatListsToAddChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
