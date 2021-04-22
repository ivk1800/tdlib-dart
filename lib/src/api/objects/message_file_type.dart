import '../tdapi.dart';

/// Contains information about a file with messages exported from another app
abstract class MessageFileType extends TdObject {
  const MessageFileType();

  static const String CONSTRUCTOR = 'messageFileType';

  /// Inherited by:
  /// [MessageFileTypePrivate]
  /// [MessageFileTypeGroup]
  /// [MessageFileTypeUnknown]
  static MessageFileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageFileTypePrivate.CONSTRUCTOR:
        return MessageFileTypePrivate.fromJson(json);
      case MessageFileTypeGroup.CONSTRUCTOR:
        return MessageFileTypeGroup.fromJson(json);
      case MessageFileTypeUnknown.CONSTRUCTOR:
        return MessageFileTypeUnknown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
