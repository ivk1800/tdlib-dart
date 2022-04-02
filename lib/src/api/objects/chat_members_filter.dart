import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Specifies the kind of chat members to return in searchChatMembers
abstract class ChatMembersFilter extends TdObject {
  const ChatMembersFilter();

  static const String CONSTRUCTOR = 'chatMembersFilter';

  /// Inherited by:
  /// [ChatMembersFilterContacts]
  /// [ChatMembersFilterAdministrators]
  /// [ChatMembersFilterMembers]
  /// [ChatMembersFilterMention]
  /// [ChatMembersFilterRestricted]
  /// [ChatMembersFilterBanned]
  /// [ChatMembersFilterBots]
  static ChatMembersFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.CONSTRUCTOR:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return ChatMembersFilterBots.fromJson(json);
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
