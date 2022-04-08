import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content must be right-aligned
@immutable
class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentRight();

  static const String constructor = 'pageBlockHorizontalAlignmentRight';

  static PageBlockHorizontalAlignmentRight? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentRight();
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
