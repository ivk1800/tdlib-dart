import '../tdapi.dart';

/// The user is not a chat member
class ChatMemberStatusLeft extends ChatMemberStatus {
  const ChatMemberStatusLeft();

  static const String CONSTRUCTOR = 'chatMemberStatusLeft';

  static ChatMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusLeft();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
