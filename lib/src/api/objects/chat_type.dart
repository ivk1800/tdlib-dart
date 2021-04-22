import '../tdapi.dart';

/// Describes the type of a chat
abstract class ChatType extends TdObject {
  const ChatType();

  static const String CONSTRUCTOR = 'chatType';

  /// Inherited by:
  /// [ChatTypePrivate]
  /// [ChatTypeBasicGroup]
  /// [ChatTypeSupergroup]
  /// [ChatTypeSecret]
  static ChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatTypePrivate.CONSTRUCTOR:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.CONSTRUCTOR:
        return ChatTypeSecret.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
