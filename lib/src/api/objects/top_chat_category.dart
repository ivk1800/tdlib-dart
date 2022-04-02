import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the categories of chats for which a list of frequently used
/// chats can be retrieved
abstract class TopChatCategory extends TdObject {
  const TopChatCategory();

  static const String CONSTRUCTOR = 'topChatCategory';

  /// Inherited by:
  /// [TopChatCategoryUsers]
  /// [TopChatCategoryBots]
  /// [TopChatCategoryGroups]
  /// [TopChatCategoryChannels]
  /// [TopChatCategoryInlineBots]
  /// [TopChatCategoryCalls]
  /// [TopChatCategoryForwardChats]
  static TopChatCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case TopChatCategoryUsers.CONSTRUCTOR:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryBots.CONSTRUCTOR:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryGroups.CONSTRUCTOR:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryChannels.CONSTRUCTOR:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryInlineBots.CONSTRUCTOR:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryCalls.CONSTRUCTOR:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryForwardChats.CONSTRUCTOR:
        return TopChatCategoryForwardChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
