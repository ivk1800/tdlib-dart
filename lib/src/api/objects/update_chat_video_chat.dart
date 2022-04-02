import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat video chat state has changed
class UpdateChatVideoChat extends Update {
  UpdateChatVideoChat({required this.chatId, required this.videoChat});

  /// [chatId] Chat identifier
  final int chatId;

  /// [videoChat] New value of video_chat
  final VideoChat videoChat;

  static const String CONSTRUCTOR = 'updateChatVideoChat';

  static UpdateChatVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatVideoChat(
        chatId: json['chat_id'],
        videoChat: VideoChat.fromJson(json['video_chat'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'video_chat': this.videoChat.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
