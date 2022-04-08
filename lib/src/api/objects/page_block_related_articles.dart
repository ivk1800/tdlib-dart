import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Related articles
@immutable
class PageBlockRelatedArticles extends PageBlock {
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });

  /// [header] Block header
  final RichText header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;

  static const String constructor = 'pageBlockRelatedArticles';

  static PageBlockRelatedArticles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticles(
      header: RichText.fromJson(json['header'])!,
      articles: List<PageBlockRelatedArticle>.from((json['articles'] ?? [])
          .map((item) => PageBlockRelatedArticle.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        'articles': articles.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
