import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a video
@immutable
class LinkPreviewTypeVideo extends LinkPreviewType {
  const LinkPreviewTypeVideo({
    required this.video,
  });

  /// [video] The video description
  final Video video;

  static const String constructor = 'linkPreviewTypeVideo';

  static LinkPreviewTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
