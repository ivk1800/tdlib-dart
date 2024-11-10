import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a video file
@immutable
class LinkPreviewTypeExternalVideo extends LinkPreviewType {
  const LinkPreviewTypeExternalVideo({
    required this.url,
    required this.mimeType,
    required this.width,
    required this.height,
    required this.duration,
  });

  /// [url] URL of the video file
  final String url;

  /// [mimeType] MIME type of the video file
  final String mimeType;

  /// [width] Expected width of the video preview; 0 if unknown
  final int width;

  /// [height] Expected height of the video preview; 0 if unknown
  final int height;

  /// [duration] Duration of the video, in seconds; 0 if unknown
  final int duration;

  static const String constructor = 'linkPreviewTypeExternalVideo';

  static LinkPreviewTypeExternalVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeExternalVideo(
      url: json['url'] as String,
      mimeType: json['mime_type'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      duration: json['duration'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'mime_type': mimeType,
        'width': width,
        'height': height,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
