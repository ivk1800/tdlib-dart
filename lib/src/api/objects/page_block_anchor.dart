import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An invisible anchor on a page, which can be used in a URL to open the page
/// from the specified anchor
class PageBlockAnchor extends PageBlock {
  PageBlockAnchor({required this.name});

  /// [name] Name of the anchor
  final String name;

  static const String CONSTRUCTOR = 'pageBlockAnchor';

  static PageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnchor(name: json['name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
