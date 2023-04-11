import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class MessageExtendedMediaVideo extends MessageExtendedMedia {
  const MessageExtendedMediaVideo({
    required this.video,
    required this.caption,
  });

  /// [video] The video
  final Video video;

  /// [caption] Photo caption
  final FormattedText caption;

  static const String constructor = 'messageExtendedMediaVideo';

  static MessageExtendedMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageExtendedMediaVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
