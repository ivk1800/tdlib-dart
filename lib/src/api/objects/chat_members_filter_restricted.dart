import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users under certain restrictions in the chat; can be used only by
/// administrators in a supergroup
@immutable
class ChatMembersFilterRestricted extends ChatMembersFilter {
  const ChatMembersFilterRestricted();

  static const String constructor = 'chatMembersFilterRestricted';

  static ChatMembersFilterRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterRestricted();
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
