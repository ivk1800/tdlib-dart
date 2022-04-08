import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is a member of the chat, without any additional privileges or
/// restrictions
@immutable
class ChatMemberStatusMember extends ChatMemberStatus {
  const ChatMemberStatusMember();

  static const String constructor = 'chatMemberStatusMember';

  static ChatMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusMember();
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
