import '../tdapi.dart';

/// Returns the owner and administrators
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  const ChatMembersFilterAdministrators();

  static const String CONSTRUCTOR = 'chatMembersFilterAdministrators';

  static ChatMembersFilterAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterAdministrators();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
