import '../tdapi.dart';

/// The user is a member of the chat, without any additional privileges or
/// restrictions
class ChatMemberStatusMember extends ChatMemberStatus {
  const ChatMemberStatusMember();

  static const String CONSTRUCTOR = 'chatMemberStatusMember';

  static ChatMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusMember();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
