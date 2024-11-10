import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the categories of chats for which a list of frequently used
/// chats can be retrieved
@immutable
abstract class TopChatCategory extends TdObject {
  const TopChatCategory();

  static const String constructor = 'topChatCategory';

  /// Inherited by:
  /// [TopChatCategoryBots]
  /// [TopChatCategoryCalls]
  /// [TopChatCategoryChannels]
  /// [TopChatCategoryForwardChats]
  /// [TopChatCategoryGroups]
  /// [TopChatCategoryInlineBots]
  /// [TopChatCategoryUsers]
  /// [TopChatCategoryWebAppBots]
  static TopChatCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TopChatCategoryBots.constructor:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryCalls.constructor:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryChannels.constructor:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryForwardChats.constructor:
        return TopChatCategoryForwardChats.fromJson(json);
      case TopChatCategoryGroups.constructor:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryInlineBots.constructor:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryUsers.constructor:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryWebAppBots.constructor:
        return TopChatCategoryWebAppBots.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
