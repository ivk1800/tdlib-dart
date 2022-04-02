import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A video message
class MessageVideo extends MessageContent {
  MessageVideo(
      {required this.video, required this.caption, required this.isSecret});

  /// [video] The video description
  final Video video;

  /// [caption] Video caption
  final FormattedText caption;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must
  /// be shown only while tapped
  final bool isSecret;

  static const String CONSTRUCTOR = 'messageVideo';

  static MessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideo(
        video: Video.fromJson(json['video'])!,
        caption: FormattedText.fromJson(json['caption'])!,
        isSecret: json['is_secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video': this.video.toJson(),
        'caption': this.caption.toJson(),
        'is_secret': this.isSecret,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
