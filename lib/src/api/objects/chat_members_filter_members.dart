import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all chat members, including restricted chat members
class ChatMembersFilterMembers extends ChatMembersFilter {
  const ChatMembersFilterMembers();

  static const String CONSTRUCTOR = 'chatMembersFilterMembers';

  static ChatMembersFilterMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterMembers();
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
