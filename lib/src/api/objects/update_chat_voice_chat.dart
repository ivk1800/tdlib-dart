import '../tdapi.dart';

/// A chat voice chat state has changed
class UpdateChatVoiceChat extends Update {
  UpdateChatVoiceChat({required this.chatId, required this.voiceChat});

  /// [chatId] Chat identifier
  final int chatId;

  /// [voiceChat] New value of voice_chat
  final VoiceChat voiceChat;

  static const String CONSTRUCTOR = 'updateChatVoiceChat';

  static UpdateChatVoiceChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatVoiceChat(
        chatId: json['chat_id'],
        voiceChat: VoiceChat.fromJson(json['voice_chat'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'voice_chat': this.voiceChat.toJson(),
        '@type': CONSTRUCTOR
      };
}
