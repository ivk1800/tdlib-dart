import '../tdapi.dart';

/// The content must be center-aligned
class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentCenter();

  static const String CONSTRUCTOR = 'pageBlockHorizontalAlignmentCenter';

  static PageBlockHorizontalAlignmentCenter? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentCenter();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
