import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a link to an article or web page
class InlineQueryResultArticle extends InlineQueryResult {
  InlineQueryResultArticle(
      {required this.id,
      required this.url,
      required this.hideUrl,
      required this.title,
      required this.description,
      this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [url] URL of the result, if it exists
  final String url;

  /// [hideUrl] True, if the URL must be not shown
  final bool hideUrl;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result
  final String description;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String CONSTRUCTOR = 'inlineQueryResultArticle';

  static InlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultArticle(
        id: json['id'],
        url: json['url'],
        hideUrl: json['hide_url'],
        title: json['title'],
        description: json['description'],
        thumbnail: Thumbnail.fromJson(json['thumbnail']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'url': this.url,
        'hide_url': this.hideUrl,
        'title': this.title,
        'description': this.description,
        'thumbnail': this.thumbnail?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
