import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The content must be right-aligned
class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentRight();

  static const String CONSTRUCTOR = 'pageBlockHorizontalAlignmentRight';

  static PageBlockHorizontalAlignmentRight? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentRight();
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
