import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a list of chats
abstract class ChatList extends TdObject {
  const ChatList();

  static const String CONSTRUCTOR = 'chatList';

  /// Inherited by:
  /// [ChatListMain]
  /// [ChatListArchive]
  /// [ChatListFilter]
  static ChatList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatListMain.CONSTRUCTOR:
        return ChatListMain.fromJson(json);
      case ChatListArchive.CONSTRUCTOR:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.CONSTRUCTOR:
        return ChatListFilter.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
