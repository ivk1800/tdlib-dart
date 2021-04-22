import '../tdapi.dart';

/// The author and publishing date of a page
class PageBlockAuthorDate extends PageBlock {
  PageBlockAuthorDate({required this.author, required this.publishDate});

  /// [author] Author
  final RichText author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String CONSTRUCTOR = 'pageBlockAuthorDate';

  static PageBlockAuthorDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAuthorDate(
        author: RichText.fromJson(json['author'])!,
        publishDate: json['publish_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'author': this.author.toJson(),
        'publish_date': this.publishDate,
        '@type': CONSTRUCTOR
      };
}
