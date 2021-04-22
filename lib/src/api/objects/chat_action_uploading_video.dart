import '../tdapi.dart';

/// The user is uploading a video
class ChatActionUploadingVideo extends ChatAction {
  ChatActionUploadingVideo({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String CONSTRUCTOR = 'chatActionUploadingVideo';

  static ChatActionUploadingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVideo(progress: json['progress']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'progress': this.progress, '@type': CONSTRUCTOR};
}
