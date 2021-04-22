import '../tdapi.dart';

/// Returns users under certain restrictions in the chat; can be used only by
/// administrators in a supergroup
class ChatMembersFilterRestricted extends ChatMembersFilter {
  const ChatMembersFilterRestricted();

  static const String CONSTRUCTOR = 'chatMembersFilterRestricted';

  static ChatMembersFilterRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterRestricted();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
