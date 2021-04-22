import '../tdapi.dart';

/// A chat draft has changed. Be aware that the update may come in the
/// currently opened chat but with old content of the draft. If the user has
/// changed the content of the draft, this update shouldn't be applied
class UpdateChatDraftMessage extends Update {
  UpdateChatDraftMessage(
      {required this.chatId, this.draftMessage, required this.positions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [draftMessage] The new draft message; may be null
  final DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String CONSTRUCTOR = 'updateChatDraftMessage';

  static UpdateChatDraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatDraftMessage(
        chatId: json['chat_id'],
        draftMessage: DraftMessage.fromJson(json['draft_message']),
        positions: List<ChatPosition>.from((json['positions'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'draft_message': this.draftMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
