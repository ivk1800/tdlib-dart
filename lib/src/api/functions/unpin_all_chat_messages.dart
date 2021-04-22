import '../tdapi.dart';

/// Removes all pinned messages from a chat; requires can_pin_messages rights
/// in the group or can_edit_messages rights in the channel
/// Returns [Ok]
class UnpinAllChatMessages extends TdFunction {
  UnpinAllChatMessages({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String CONSTRUCTOR = 'unpinAllChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
