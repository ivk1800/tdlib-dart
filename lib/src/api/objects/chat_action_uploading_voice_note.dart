import '../tdapi.dart';

/// The user is uploading a voice note
class ChatActionUploadingVoiceNote extends ChatAction {
  ChatActionUploadingVoiceNote({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String CONSTRUCTOR = 'chatActionUploadingVoiceNote';

  static ChatActionUploadingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVoiceNote(progress: json['progress']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'progress': this.progress, '@type': CONSTRUCTOR};
}
