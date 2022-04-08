import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a horizontal alignment of a table cell content
@immutable
abstract class PageBlockHorizontalAlignment extends TdObject {
  const PageBlockHorizontalAlignment();

  static const String constructor = 'pageBlockHorizontalAlignment';

  /// Inherited by:
  /// [PageBlockHorizontalAlignmentLeft]
  /// [PageBlockHorizontalAlignmentCenter]
  /// [PageBlockHorizontalAlignmentRight]
  static PageBlockHorizontalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PageBlockHorizontalAlignmentLeft.constructor:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.constructor:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.constructor:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
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
