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

    switch (json['@type']) {
      case TopChatCategoryUsers.constructor:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryBots.constructor:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryGroups.constructor:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryChannels.constructor:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryInlineBots.constructor:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryCalls.constructor:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryForwardChats.constructor:
        return TopChatCategoryForwardChats.fromJson(json);
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
