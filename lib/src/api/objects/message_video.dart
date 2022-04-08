import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video message
@immutable
class MessageVideo extends MessageContent {
  const MessageVideo({
    required this.video,
    required this.caption,
    required this.isSecret,
  });

  /// [video] The video description
  final Video video;

  /// [caption] Video caption
  final FormattedText caption;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must
  /// be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageVideo';

  static MessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideo(
      video: Video.fromJson(json['video'])!,
      caption: FormattedText.fromJson(json['caption'])!,
      isSecret: json['is_secret'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'caption': caption.toJson(),
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
