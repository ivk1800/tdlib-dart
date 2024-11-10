import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a media from a link preview album
@immutable
abstract class LinkPreviewAlbumMedia extends TdObject {
  const LinkPreviewAlbumMedia();

  static const String constructor = 'linkPreviewAlbumMedia';

  /// Inherited by:
  /// [LinkPreviewAlbumMediaPhoto]
  /// [LinkPreviewAlbumMediaVideo]
  static LinkPreviewAlbumMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewAlbumMediaPhoto.constructor:
        return LinkPreviewAlbumMediaPhoto.fromJson(json);
      case LinkPreviewAlbumMediaVideo.constructor:
        return LinkPreviewAlbumMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
