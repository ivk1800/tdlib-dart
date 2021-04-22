import '../tdapi.dart';

/// A category containing frequently used private chats with non-bot users
class TopChatCategoryUsers extends TopChatCategory {
  const TopChatCategoryUsers();

  static const String CONSTRUCTOR = 'topChatCategoryUsers';

  static TopChatCategoryUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryUsers();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
