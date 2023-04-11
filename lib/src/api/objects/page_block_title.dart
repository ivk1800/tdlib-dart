import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The title of a page
@immutable
class PageBlockTitle extends PageBlock {
  const PageBlockTitle({
    required this.title,
  });

  /// [title] Title
  final RichText title;

  static const String constructor = 'pageBlockTitle';

  static PageBlockTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTitle(
      title: RichText.fromJson(json['title'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
