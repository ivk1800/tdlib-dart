import '../tdapi.dart';

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
}
