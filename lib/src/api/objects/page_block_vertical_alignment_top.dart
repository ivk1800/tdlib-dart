import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The content must be top-aligned
class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentTop();

  static const String CONSTRUCTOR = 'pageBlockVerticalAlignmentTop';

  static PageBlockVerticalAlignmentTop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentTop();
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
