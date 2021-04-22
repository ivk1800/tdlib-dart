import '../tdapi.dart';

/// Related articles
class PageBlockRelatedArticles extends PageBlock {
  PageBlockRelatedArticles({required this.header, required this.articles});

  /// [header] Block header
  final RichText header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;

  static const String CONSTRUCTOR = 'pageBlockRelatedArticles';

  static PageBlockRelatedArticles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticles(
        header: RichText.fromJson(json['header'])!,
        articles: List<PageBlockRelatedArticle>.from((json['articles'] ?? [])
            .map((item) => PageBlockRelatedArticle.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'header': this.header.toJson(),
        'articles': articles.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
