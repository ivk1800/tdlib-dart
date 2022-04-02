import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A video message
class PushMessageContentVideo extends PushMessageContent {
  PushMessageContentVideo(
      {this.video,
      required this.caption,
      required this.isSecret,
      required this.isPinned});

  /// [video] Message content; may be null
  final Video? video;

  /// [caption] Video caption
  final String caption;

  /// [isSecret] True, if the video is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentVideo';

  static PushMessageContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideo(
        video: Video.fromJson(json['video']),
        caption: json['caption'],
        isSecret: json['is_secret'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video': this.video?.toJson(),
        'caption': this.caption,
        'is_secret': this.isSecret,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
