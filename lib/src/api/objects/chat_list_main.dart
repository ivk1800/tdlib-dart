import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A main list of chats
@immutable
class ChatListMain extends ChatList {
  const ChatListMain();

  static const String constructor = 'chatListMain';

  static ChatListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListMain();
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
