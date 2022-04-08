import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The footer of a page
@immutable
class PageBlockFooter extends PageBlock {
  const PageBlockFooter({
    required this.footer,
  });

  /// [footer] Footer
  final RichText footer;

  static const String constructor = 'pageBlockFooter';

  static PageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockFooter(
      footer: RichText.fromJson(json['footer'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'footer': footer.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
