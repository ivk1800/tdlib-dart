import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note message
@immutable
class PushMessageContentVideoNote extends PushMessageContent {
  const PushMessageContentVideoNote({
    this.videoNote,
    required this.isPinned,
  });

  /// [videoNote] Message content; may be null
  final VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVideoNote';

  static PushMessageContentVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideoNote(
      videoNote:
          VideoNote.fromJson(json['video_note'] as Map<String, dynamic>?),
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote?.toJson(),
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
