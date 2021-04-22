import '../tdapi.dart';

/// Contains information about the origin of a forwarded message
abstract class MessageForwardOrigin extends TdObject {
  const MessageForwardOrigin();

  static const String CONSTRUCTOR = 'messageForwardOrigin';

  /// Inherited by:
  /// [MessageForwardOriginUser]
  /// [MessageForwardOriginChat]
  /// [MessageForwardOriginHiddenUser]
  /// [MessageForwardOriginChannel]
  /// [MessageForwardOriginMessageImport]
  static MessageForwardOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageForwardOriginUser.CONSTRUCTOR:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.CONSTRUCTOR:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.CONSTRUCTOR:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.CONSTRUCTOR:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginMessageImport.CONSTRUCTOR:
        return MessageForwardOriginMessageImport.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
