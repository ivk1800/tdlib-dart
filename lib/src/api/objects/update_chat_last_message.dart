import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The last message of a chat was changed. If last_message is null, then the
/// last message in the chat became unknown. Some new unknown messages might
/// be added to the chat in this case
class UpdateChatLastMessage extends Update {
  UpdateChatLastMessage(
      {required this.chatId, this.lastMessage, required this.positions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastMessage] The new last message in the chat; may be null
  final Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String CONSTRUCTOR = 'updateChatLastMessage';

  static UpdateChatLastMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatLastMessage(
        chatId: json['chat_id'],
        lastMessage: Message.fromJson(json['last_message']),
        positions: List<ChatPosition>.from((json['positions'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'last_message': this.lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
