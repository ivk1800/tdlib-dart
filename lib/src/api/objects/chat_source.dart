import '../tdapi.dart';

/// Describes a reason why an external chat is shown in a chat list
abstract class ChatSource extends TdObject {
  const ChatSource();

  static const String CONSTRUCTOR = 'chatSource';

  /// Inherited by:
  /// [ChatSourceMtprotoProxy]
  /// [ChatSourcePublicServiceAnnouncement]
  static ChatSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatSourceMtprotoProxy.CONSTRUCTOR:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.CONSTRUCTOR:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
