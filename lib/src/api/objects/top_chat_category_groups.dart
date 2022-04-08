import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A category containing frequently used basic groups and supergroups
@immutable
class TopChatCategoryGroups extends TopChatCategory {
  const TopChatCategoryGroups();

  static const String constructor = 'topChatCategoryGroups';

  static TopChatCategoryGroups? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGroups();
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
