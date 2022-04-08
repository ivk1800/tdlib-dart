import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An embedded post
@immutable
class PageBlockEmbeddedPost extends PageBlock {
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });

  /// [url] Web page URL
  final String url;

  /// [author] Post author
  final String author;

  /// [authorPhoto] Post author photo; may be null
  final Photo? authorPhoto;

  /// [date] Point in time (Unix timestamp) when the post was created; 0 if
  /// unknown
  final int date;

  /// [pageBlocks] Post content
  final List<PageBlock> pageBlocks;

  /// [caption] Post caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockEmbeddedPost';

  static PageBlockEmbeddedPost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbeddedPost(
      url: json['url'],
      author: json['author'],
      authorPhoto: Photo.fromJson(json['author_photo']),
      date: json['date'],
      pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
          .map((item) => PageBlock.fromJson(item))
          .toList()),
      caption: PageBlockCaption.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'author': author,
        'author_photo': authorPhoto?.toJson(),
        'date': date,
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
