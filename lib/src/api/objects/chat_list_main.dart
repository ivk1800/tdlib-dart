import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A main list of chats
class ChatListMain extends ChatList {
  const ChatListMain();

  static const String CONSTRUCTOR = 'chatListMain';

  static ChatListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListMain();
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
