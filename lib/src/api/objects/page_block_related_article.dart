import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a related article
@immutable
class PageBlockRelatedArticle extends TdObject {
  const PageBlockRelatedArticle({
    required this.url,
    required this.title,
    required this.description,
    this.photo,
    required this.author,
    required this.publishDate,
  });

  /// [url] Related article URL
  final String url;

  /// [title] Article title; may be empty
  final String title;

  /// param_[description] Article description; may be empty
  final String description;

  /// [photo] Article photo; may be null
  final Photo? photo;

  /// [author] Article author; may be empty
  final String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String constructor = 'pageBlockRelatedArticle';

  static PageBlockRelatedArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticle(
      url: json['url'],
      title: json['title'],
      description: json['description'],
      photo: Photo.fromJson(json['photo']),
      author: json['author'],
      publishDate: json['publish_date'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'title': title,
        'description': description,
        'photo': photo?.toJson(),
        'author': author,
        'publish_date': publishDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
