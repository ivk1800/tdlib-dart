import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class LinkPreviewAlbumMediaVideo extends LinkPreviewAlbumMedia {
  const LinkPreviewAlbumMediaVideo({
    required this.video,
  });

  /// [video] Video description
  final Video video;

  static const String constructor = 'linkPreviewAlbumMediaVideo';

  static LinkPreviewAlbumMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaVideo(
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
