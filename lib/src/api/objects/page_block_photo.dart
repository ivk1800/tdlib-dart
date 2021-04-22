import '../tdapi.dart';

/// A photo
class PageBlockPhoto extends PageBlock {
  PageBlockPhoto({this.photo, required this.caption, required this.url});

  /// [photo] Photo file; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final PageBlockCaption caption;

  /// [url] URL that needs to be opened when the photo is clicked
  final String url;

  static const String CONSTRUCTOR = 'pageBlockPhoto';

  static PageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPhoto(
        photo: Photo.fromJson(json['photo']),
        caption: PageBlockCaption.fromJson(json['caption'])!,
        url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo?.toJson(),
        'caption': this.caption.toJson(),
        'url': this.url,
        '@type': CONSTRUCTOR
      };
}
