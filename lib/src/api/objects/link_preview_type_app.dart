import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an app at App Store or Google Play
@immutable
class LinkPreviewTypeApp extends LinkPreviewType {
  const LinkPreviewTypeApp({
    required this.photo,
  });

  /// [photo] Photo for the app
  final Photo photo;

  static const String constructor = 'linkPreviewTypeApp';

  static LinkPreviewTypeApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeApp(
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
