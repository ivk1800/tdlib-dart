import '../tdapi.dart';

/// The user is recording a voice note
class ChatActionRecordingVoiceNote extends ChatAction {
  const ChatActionRecordingVoiceNote();

  static const String CONSTRUCTOR = 'chatActionRecordingVoiceNote';

  static ChatActionRecordingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVoiceNote();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
