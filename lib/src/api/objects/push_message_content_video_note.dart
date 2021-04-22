import '../tdapi.dart';

/// A video note message
class PushMessageContentVideoNote extends PushMessageContent {
  PushMessageContentVideoNote({this.videoNote, required this.isPinned});

  /// [videoNote] Message content; may be null
  final VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentVideoNote';

  static PushMessageContentVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideoNote(
        videoNote: VideoNote.fromJson(json['video_note']),
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video_note': this.videoNote?.toJson(),
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
