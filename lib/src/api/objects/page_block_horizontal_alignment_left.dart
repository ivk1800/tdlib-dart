import '../tdapi.dart';

/// The content should be left-aligned
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
}
