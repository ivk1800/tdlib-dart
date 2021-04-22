import '../tdapi.dart';

/// A category containing frequently used basic groups and supergroups
class TopChatCategoryGroups extends TopChatCategory {
  const TopChatCategoryGroups();

  static const String CONSTRUCTOR = 'topChatCategoryGroups';

  static TopChatCategoryGroups? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGroups();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
