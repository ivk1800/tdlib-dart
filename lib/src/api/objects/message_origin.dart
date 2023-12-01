import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the origin of a message
@immutable
abstract class MessageOrigin extends TdObject {
  const MessageOrigin();

  static const String constructor = 'messageOrigin';

  /// Inherited by:
  /// [MessageOriginChannel]
  /// [MessageOriginChat]
  /// [MessageOriginHiddenUser]
  /// [MessageOriginUser]
  static MessageOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageOriginChannel.constructor:
        return MessageOriginChannel.fromJson(json);
      case MessageOriginChat.constructor:
        return MessageOriginChat.fromJson(json);
      case MessageOriginHiddenUser.constructor:
        return MessageOriginHiddenUser.fromJson(json);
      case MessageOriginUser.constructor:
        return MessageOriginUser.fromJson(json);
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
