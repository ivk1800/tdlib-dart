import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all chat members, including restricted chat members
@immutable
class ChatMembersFilterMembers extends ChatMembersFilter {
  const ChatMembersFilterMembers();

  static const String constructor = 'chatMembersFilterMembers';

  static ChatMembersFilterMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterMembers();
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
