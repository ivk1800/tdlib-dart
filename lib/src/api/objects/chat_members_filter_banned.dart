import '../tdapi.dart';

/// Returns users banned from the chat; can be used only by administrators in
/// a supergroup or in a channel
class ChatMembersFilterBanned extends ChatMembersFilter {
  const ChatMembersFilterBanned();

  static const String CONSTRUCTOR = 'chatMembersFilterBanned';

  static ChatMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterBanned();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
