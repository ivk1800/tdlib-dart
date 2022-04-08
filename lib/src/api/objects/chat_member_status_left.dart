import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user or the chat is not a chat member
@immutable
class ChatMemberStatusLeft extends ChatMemberStatus {
  const ChatMemberStatusLeft();

  static const String constructor = 'chatMemberStatusLeft';

  static ChatMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusLeft();
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
