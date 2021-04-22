import '../tdapi.dart';

/// Returns bot members of the chat
class ChatMembersFilterBots extends ChatMembersFilter {
  const ChatMembersFilterBots();

  static const String CONSTRUCTOR = 'chatMembersFilterBots';

  static ChatMembersFilterBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterBots();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
