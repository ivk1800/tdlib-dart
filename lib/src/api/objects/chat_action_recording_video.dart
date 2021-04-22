import '../tdapi.dart';

/// The user is recording a video
class ChatActionRecordingVideo extends ChatAction {
  const ChatActionRecordingVideo();

  static const String CONSTRUCTOR = 'chatActionRecordingVideo';

  static ChatActionRecordingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
