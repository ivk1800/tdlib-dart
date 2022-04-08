import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat is a recently created group chat to which new members can be
/// invited
@immutable
class ChatActionBarInviteMembers extends ChatActionBar {
  const ChatActionBarInviteMembers();

  static const String constructor = 'chatActionBarInviteMembers';

  static ChatActionBarInviteMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarInviteMembers();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
