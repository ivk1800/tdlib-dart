import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The title of a page
class PageBlockTitle extends PageBlock {
  PageBlockTitle({required this.title});

  /// [title] Title
  final RichText title;

  static const String CONSTRUCTOR = 'pageBlockTitle';

  static PageBlockTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTitle(title: RichText.fromJson(json['title'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'title': this.title.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
