import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a photo
@immutable
class LinkPreviewAlbumMediaPhoto extends LinkPreviewAlbumMedia {
  const LinkPreviewAlbumMediaPhoto({
    required this.photo,
  });

  /// [photo] Photo description
  final Photo photo;

  static const String constructor = 'linkPreviewAlbumMediaPhoto';

  static LinkPreviewAlbumMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
