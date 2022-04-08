import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Specifies the kind of chat members to return in searchChatMembers
@immutable
abstract class ChatMembersFilter extends TdObject {
  const ChatMembersFilter();

  static const String constructor = 'chatMembersFilter';

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

    switch (json['@type']) {
      case ChatMembersFilterContacts.constructor:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.constructor:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.constructor:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.constructor:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.constructor:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.constructor:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.constructor:
        return ChatMembersFilterBots.fromJson(json);
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
