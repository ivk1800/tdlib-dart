import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a Vertical alignment of a table cell content
abstract class PageBlockVerticalAlignment extends TdObject {
  const PageBlockVerticalAlignment();

  static const String CONSTRUCTOR = 'pageBlockVerticalAlignment';

  /// Inherited by:
  /// [PageBlockVerticalAlignmentTop]
  /// [PageBlockVerticalAlignmentMiddle]
  /// [PageBlockVerticalAlignmentBottom]
  static PageBlockVerticalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PageBlockVerticalAlignmentTop.CONSTRUCTOR:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.CONSTRUCTOR:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.CONSTRUCTOR:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
