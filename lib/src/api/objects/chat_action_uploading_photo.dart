import '../tdapi.dart';

/// The user is uploading a photo
class ChatActionUploadingPhoto extends ChatAction {
  ChatActionUploadingPhoto({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String CONSTRUCTOR = 'chatActionUploadingPhoto';

  static ChatActionUploadingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingPhoto(progress: json['progress']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'progress': this.progress, '@type': CONSTRUCTOR};
}
