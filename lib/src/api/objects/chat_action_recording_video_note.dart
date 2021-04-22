import '../tdapi.dart';

/// The user is recording a video note
class ChatActionRecordingVideoNote extends ChatAction {
  const ChatActionRecordingVideoNote();

  static const String CONSTRUCTOR = 'chatActionRecordingVideoNote';

  static ChatActionRecordingVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideoNote();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
