import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat is a recently created group chat to which new members can be
/// invited
class ChatActionBarInviteMembers extends ChatActionBar {
  const ChatActionBarInviteMembers();

  static const String CONSTRUCTOR = 'chatActionBarInviteMembers';

  static ChatActionBarInviteMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarInviteMembers();
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
