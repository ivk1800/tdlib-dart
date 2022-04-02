import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a horizontal alignment of a table cell content
abstract class PageBlockHorizontalAlignment extends TdObject {
  const PageBlockHorizontalAlignment();

  static const String CONSTRUCTOR = 'pageBlockHorizontalAlignment';

  /// Inherited by:
  /// [PageBlockHorizontalAlignmentLeft]
  /// [PageBlockHorizontalAlignmentCenter]
  /// [PageBlockHorizontalAlignmentRight]
  static PageBlockHorizontalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PageBlockHorizontalAlignmentLeft.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.CONSTRUCTOR:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
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
