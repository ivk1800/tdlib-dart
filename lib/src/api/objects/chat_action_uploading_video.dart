import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is uploading a video
@immutable
class ChatActionUploadingVideo extends ChatAction {
  const ChatActionUploadingVideo({
    required this.progress,
  });

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingVideo';

  static ChatActionUploadingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVideo(
      progress: json['progress'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'progress': progress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
