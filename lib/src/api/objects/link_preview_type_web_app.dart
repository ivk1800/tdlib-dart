import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Web App
@immutable
class LinkPreviewTypeWebApp extends LinkPreviewType {
  const LinkPreviewTypeWebApp({
    this.photo,
  });

  /// [photo] Web App photo; may be null if none
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeWebApp';

  static LinkPreviewTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeWebApp(
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
