import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is uploading a document
@immutable
class ChatActionUploadingDocument extends ChatAction {
  const ChatActionUploadingDocument({
    required this.progress,
  });

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingDocument';

  static ChatActionUploadingDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingDocument(
      progress: json['progress'],
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
