import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The content must be bottom-aligned
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentBottom();

  static const String CONSTRUCTOR = 'pageBlockVerticalAlignmentBottom';

  static PageBlockVerticalAlignmentBottom? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentBottom();
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
