import '../tdapi.dart';

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
}
