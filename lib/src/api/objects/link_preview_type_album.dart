import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a media album consisting of photos and videos
@immutable
class LinkPreviewTypeAlbum extends LinkPreviewType {
  const LinkPreviewTypeAlbum({
    required this.media,
    required this.caption,
  });

  /// [media] The list of album media
  final List<LinkPreviewAlbumMedia> media;

  /// [caption] Album caption
  final String caption;

  static const String constructor = 'linkPreviewTypeAlbum';

  static LinkPreviewTypeAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAlbum(
      media: List<LinkPreviewAlbumMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => LinkPreviewAlbumMedia.fromJson(item))
              .toList()),
      caption: json['caption'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'media': media.map((item) => item.toJson()).toList(),
        'caption': caption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
