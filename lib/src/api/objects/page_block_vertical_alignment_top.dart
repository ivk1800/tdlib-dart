import '../tdapi.dart';

/// The content should be top-aligned
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
}
