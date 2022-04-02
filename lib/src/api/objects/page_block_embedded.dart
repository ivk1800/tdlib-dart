import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An embedded web page
class PageBlockEmbedded extends PageBlock {
  PageBlockEmbedded(
      {required this.url,
      required this.html,
      this.posterPhoto,
      required this.width,
      required this.height,
      required this.caption,
      required this.isFullWidth,
      required this.allowScrolling});

  /// [url] Web page URL, if available
  final String url;

  /// [html] HTML-markup of the embedded page
  final String html;

  /// [posterPhoto] Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// [width] Block width; 0 if unknown
  final int width;

  /// [height] Block height; 0 if unknown
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;

  /// [isFullWidth] True, if the block must be full width
  final bool isFullWidth;

  /// [allowScrolling] True, if scrolling needs to be allowed
  final bool allowScrolling;

  static const String CONSTRUCTOR = 'pageBlockEmbedded';

  static PageBlockEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbedded(
        url: json['url'],
        html: json['html'],
        posterPhoto: Photo.fromJson(json['poster_photo']),
        width: json['width'],
        height: json['height'],
        caption: PageBlockCaption.fromJson(json['caption'])!,
        isFullWidth: json['is_full_width'],
        allowScrolling: json['allow_scrolling']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'html': this.html,
        'poster_photo': this.posterPhoto?.toJson(),
        'width': this.width,
        'height': this.height,
        'caption': this.caption.toJson(),
        'is_full_width': this.isFullWidth,
        'allow_scrolling': this.allowScrolling,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
