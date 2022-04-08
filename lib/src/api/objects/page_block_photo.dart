import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo
@immutable
class PageBlockPhoto extends PageBlock {
  const PageBlockPhoto({
    this.photo,
    required this.caption,
    required this.url,
  });

  /// [photo] Photo file; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final PageBlockCaption caption;

  /// [url] URL that needs to be opened when the photo is clicked
  final String url;

  static const String constructor = 'pageBlockPhoto';

  static PageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPhoto(
      photo: Photo.fromJson(json['photo']),
      caption: PageBlockCaption.fromJson(json['caption'])!,
      url: json['url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'caption': caption.toJson(),
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
