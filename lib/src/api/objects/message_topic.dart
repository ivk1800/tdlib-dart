import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a topic of messages in a chat
@immutable
abstract class MessageTopic extends TdObject {
  const MessageTopic();

  static const String constructor = 'messageTopic';

  /// Inherited by:
  /// [MessageTopicDirectMessages]
  /// [MessageTopicForum]
  /// [MessageTopicSavedMessages]
  static MessageTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageTopicDirectMessages.constructor:
        return MessageTopicDirectMessages.fromJson(json);
      case MessageTopicForum.constructor:
        return MessageTopicForum.fromJson(json);
      case MessageTopicSavedMessages.constructor:
        return MessageTopicSavedMessages.fromJson(json);
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
