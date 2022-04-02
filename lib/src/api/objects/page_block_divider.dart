import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An empty block separating a page
class PageBlockDivider extends PageBlock {
  const PageBlockDivider();

  static const String CONSTRUCTOR = 'pageBlockDivider';

  static PageBlockDivider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockDivider();
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
