import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invisible anchor on a page, which can be used in a URL to open the page
/// from the specified anchor
@immutable
class PageBlockAnchor extends PageBlock {
  const PageBlockAnchor({
    required this.name,
  });

  /// [name] Name of the anchor
  final String name;

  static const String constructor = 'pageBlockAnchor';

  static PageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnchor(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
