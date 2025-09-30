import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story became inaccessible
@immutable
class UpdateStoryDeleted extends Update {
  const UpdateStoryDeleted({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'updateStoryDeleted';

  static UpdateStoryDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryDeleted(
      storyPosterChatId: json['story_poster_chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
