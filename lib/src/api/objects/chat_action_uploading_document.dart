import '../tdapi.dart';

/// The user is uploading a document
class ChatActionUploadingDocument extends ChatAction {
  ChatActionUploadingDocument({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String CONSTRUCTOR = 'chatActionUploadingDocument';

  static ChatActionUploadingDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingDocument(progress: json['progress']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'progress': this.progress, '@type': CONSTRUCTOR};
}
