import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat draft has changed. Be aware that the update may come in the
/// currently opened chat but with old content of the draft. If the user has
/// changed the content of the draft, this update mustn't be applied
@immutable
class UpdateChatDraftMessage extends Update {
  const UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [draftMessage] The new draft message; may be null if none
  final DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String constructor = 'updateChatDraftMessage';

  static UpdateChatDraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatDraftMessage(
      chatId: json['chat_id'] as int,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
      positions: List<ChatPosition>.from(
          ((json['positions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatPosition.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'draft_message': draftMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
