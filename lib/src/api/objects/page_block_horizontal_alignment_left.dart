import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content must be left-aligned
@immutable
class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentLeft();

  static const String constructor = 'pageBlockHorizontalAlignmentLeft';

  static PageBlockHorizontalAlignmentLeft? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentLeft();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
