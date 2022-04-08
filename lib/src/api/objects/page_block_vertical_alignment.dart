import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a Vertical alignment of a table cell content
@immutable
abstract class PageBlockVerticalAlignment extends TdObject {
  const PageBlockVerticalAlignment();

  static const String constructor = 'pageBlockVerticalAlignment';

  /// Inherited by:
  /// [PageBlockVerticalAlignmentTop]
  /// [PageBlockVerticalAlignmentMiddle]
  /// [PageBlockVerticalAlignmentBottom]
  static PageBlockVerticalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PageBlockVerticalAlignmentTop.constructor:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.constructor:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.constructor:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
