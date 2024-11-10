import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An embedded web page
@immutable
class PageBlockEmbedded extends PageBlock {
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });

  /// [url] URL of the embedded page, if available
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

  static const String constructor = 'pageBlockEmbedded';

  static PageBlockEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbedded(
      url: json['url'] as String,
      html: json['html'] as String,
      posterPhoto:
          Photo.fromJson(json['poster_photo'] as Map<String, dynamic>?),
      width: json['width'] as int,
      height: json['height'] as int,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
      isFullWidth: json['is_full_width'] as bool,
      allowScrolling: json['allow_scrolling'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'html': html,
        'poster_photo': posterPhoto?.toJson(),
        'width': width,
        'height': height,
        'caption': caption.toJson(),
        'is_full_width': isFullWidth,
        'allow_scrolling': allowScrolling,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
