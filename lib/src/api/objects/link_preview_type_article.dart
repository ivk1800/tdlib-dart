import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a web site
@immutable
class LinkPreviewTypeArticle extends LinkPreviewType {
  const LinkPreviewTypeArticle({
    this.photo,
  });

  /// [photo] Article's main photo; may be null
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeArticle';

  static LinkPreviewTypeArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeArticle(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
