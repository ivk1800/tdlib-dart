import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a link to an article or web page
@immutable
class InlineQueryResultArticle extends InlineQueryResult {
  const InlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    this.thumbnail,
  });

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

  static const String constructor = 'inlineQueryResultArticle';

  static InlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultArticle(
      id: json['id'] as String,
      url: json['url'] as String,
      hideUrl: json['hide_url'] as bool,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'url': url,
        'hide_url': hideUrl,
        'title': title,
        'description': description,
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
