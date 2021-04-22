import '../tdapi.dart';

/// A member left the chat
class ChatEventMemberLeft extends ChatEventAction {
  const ChatEventMemberLeft();

  static const String CONSTRUCTOR = 'chatEventMemberLeft';

  static ChatEventMemberLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberLeft();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
