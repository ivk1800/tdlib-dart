import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Basic information about a Saved Messages topic has changed. This update is
/// guaranteed to come before the topic identifier is returned to the
/// application
@immutable
class UpdateSavedMessagesTopic extends Update {
  const UpdateSavedMessagesTopic({
    required this.topic,
  });

  /// [topic] New data about the topic
  final SavedMessagesTopic topic;

  static const String constructor = 'updateSavedMessagesTopic';

  static UpdateSavedMessagesTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTopic(
      topic:
          SavedMessagesTopic.fromJson(json['topic'] as Map<String, dynamic>?)!,
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
