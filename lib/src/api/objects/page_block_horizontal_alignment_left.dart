import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The content must be left-aligned
class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentLeft();

  static const String CONSTRUCTOR = 'pageBlockHorizontalAlignmentLeft';

  static PageBlockHorizontalAlignmentLeft? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentLeft();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
