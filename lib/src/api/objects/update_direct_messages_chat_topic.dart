import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Basic information about a topic in a channel direct messages chat
/// administered by the current user has changed. This update is guaranteed to
/// come before the topic identifier is returned to the application
@immutable
class UpdateDirectMessagesChatTopic extends Update {
  const UpdateDirectMessagesChatTopic({required this.topic});

  /// [topic] New data about the topic
  final DirectMessagesChatTopic topic;

  static const String constructor = 'updateDirectMessagesChatTopic';

  static UpdateDirectMessagesChatTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDirectMessagesChatTopic(
      topic: DirectMessagesChatTopic.fromJson(
        json['topic'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic': topic.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
