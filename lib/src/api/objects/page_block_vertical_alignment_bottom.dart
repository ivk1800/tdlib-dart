import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content must be bottom-aligned
@immutable
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentBottom();

  static const String constructor = 'pageBlockVerticalAlignmentBottom';

  static PageBlockVerticalAlignmentBottom? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentBottom();
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
