import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a list of chats
@immutable
abstract class ChatList extends TdObject {
  const ChatList();

  static const String constructor = 'chatList';

  /// Inherited by:
  /// [ChatListArchive]
  /// [ChatListFilter]
  /// [ChatListMain]
  static ChatList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatListArchive.constructor:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.constructor:
        return ChatListFilter.fromJson(json);
      case ChatListMain.constructor:
        return ChatListMain.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
