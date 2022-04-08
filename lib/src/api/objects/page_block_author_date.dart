import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The author and publishing date of a page
@immutable
class PageBlockAuthorDate extends PageBlock {
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });

  /// [author] Author
  final RichText author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String constructor = 'pageBlockAuthorDate';

  static PageBlockAuthorDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAuthorDate(
      author: RichText.fromJson(json['author'])!,
      publishDate: json['publish_date'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'author': author.toJson(),
        'publish_date': publishDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
