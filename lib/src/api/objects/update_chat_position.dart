import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The position of a chat in a chat list has changed. Instead of this update
/// updateChatLastMessage or updateChatDraftMessage might be sent
@immutable
class UpdateChatPosition extends Update {
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be
  /// removed from the list
  final ChatPosition position;

  static const String constructor = 'updateChatPosition';

  static UpdateChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPosition(
      chatId: json['chat_id'],
      position: ChatPosition.fromJson(json['position'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'position': position.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
