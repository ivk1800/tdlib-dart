import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Tags used in Saved Messages or a Saved Messages topic have changed
@immutable
class UpdateSavedMessagesTags extends Update {
  const UpdateSavedMessagesTags({
    required this.savedMessagesTopicId,
    required this.tags,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags were
  /// changed; 0 if tags for the whole chat has changed
  final int savedMessagesTopicId;

  /// [tags] The new tags
  final SavedMessagesTags tags;

  static const String constructor = 'updateSavedMessagesTags';

  static UpdateSavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTags(
      savedMessagesTopicId: json['saved_messages_topic_id'] as int,
      tags: SavedMessagesTags.fromJson(json['tags'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'tags': tags.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
