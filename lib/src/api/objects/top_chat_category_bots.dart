import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A category containing frequently used private chats with bot users
class TopChatCategoryBots extends TopChatCategory {
  const TopChatCategoryBots();

  static const String CONSTRUCTOR = 'topChatCategoryBots';

  static TopChatCategoryBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryBots();
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
