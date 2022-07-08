import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the origin of a forwarded message
@immutable
abstract class MessageForwardOrigin extends TdObject {
  const MessageForwardOrigin();

  static const String constructor = 'messageForwardOrigin';

  /// Inherited by:
  /// [MessageForwardOriginChannel]
  /// [MessageForwardOriginChat]
  /// [MessageForwardOriginHiddenUser]
  /// [MessageForwardOriginMessageImport]
  /// [MessageForwardOriginUser]
  static MessageForwardOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageForwardOriginChannel.constructor:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginChat.constructor:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.constructor:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginMessageImport.constructor:
        return MessageForwardOriginMessageImport.fromJson(json);
      case MessageForwardOriginUser.constructor:
        return MessageForwardOriginUser.fromJson(json);
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
