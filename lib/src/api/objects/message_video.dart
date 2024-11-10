import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video message
@immutable
class MessageVideo extends MessageContent {
  const MessageVideo({
    required this.video,
    required this.alternativeVideos,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [video] The video description
  final Video video;

  /// [alternativeVideos] Alternative qualities of the video
  final List<AlternativeVideo> alternativeVideos;

  /// [caption] Video caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// video; otherwise, the caption must be shown below the video
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must
  /// be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageVideo';

  static MessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      alternativeVideos: List<AlternativeVideo>.from(
          ((json['alternative_videos'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AlternativeVideo.fromJson(item))
              .toList()),
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
      isSecret: json['is_secret'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'alternative_videos':
            alternativeVideos.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'has_spoiler': hasSpoiler,
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
