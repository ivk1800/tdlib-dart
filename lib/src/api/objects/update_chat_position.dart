import '../tdapi.dart';

/// The position of a chat in a chat list has changed. Instead of this update
/// updateChatLastMessage or updateChatDraftMessage might be sent
class UpdateChatPosition extends Update {
  UpdateChatPosition({required this.chatId, required this.position});

  /// [chatId] Chat identifier
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be
  /// removed from the list
  final ChatPosition position;

  static const String CONSTRUCTOR = 'updateChatPosition';

  static UpdateChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPosition(
        chatId: json['chat_id'],
        position: ChatPosition.fromJson(json['position'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'position': this.position.toJson(),
        '@type': CONSTRUCTOR
      };
}
