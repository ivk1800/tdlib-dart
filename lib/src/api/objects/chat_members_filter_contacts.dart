import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns contacts of the user
class ChatMembersFilterContacts extends ChatMembersFilter {
  const ChatMembersFilterContacts();

  static const String CONSTRUCTOR = 'chatMembersFilterContacts';

  static ChatMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterContacts();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
