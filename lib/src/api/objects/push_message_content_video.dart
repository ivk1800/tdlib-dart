import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video message
@immutable
class PushMessageContentVideo extends PushMessageContent {
  const PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [video] Message content; may be null
  final Video? video;

  /// [caption] Video caption
  final String caption;

  /// [isSecret] True, if the video is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVideo';

  static PushMessageContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
      caption: json['caption'] as String,
      isSecret: json['is_secret'] as bool,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video?.toJson(),
        'caption': caption,
        'is_secret': isSecret,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
