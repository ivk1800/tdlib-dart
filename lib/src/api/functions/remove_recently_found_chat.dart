import '../tdapi.dart';

/// Removes a chat from the list of recently found chats
/// Returns [Ok]
class RemoveRecentlyFoundChat extends TdFunction {
  RemoveRecentlyFoundChat({required this.chatId});

  /// [chatId] Identifier of the chat to be removed
  final int chatId;

  static const String CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
