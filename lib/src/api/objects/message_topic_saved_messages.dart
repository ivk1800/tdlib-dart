import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A topic in Saved Messages chat
@immutable
class MessageTopicSavedMessages extends MessageTopic {
  const MessageTopicSavedMessages({required this.savedMessagesTopicId});

  /// [savedMessagesTopicId] Unique identifier of the Saved Messages topic
  final int savedMessagesTopicId;

  static const String constructor = 'messageTopicSavedMessages';

  static MessageTopicSavedMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicSavedMessages(
      savedMessagesTopicId: json['saved_messages_topic_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'saved_messages_topic_id': savedMessagesTopicId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
