import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a story is closed by the user
/// Returns [Ok]
@immutable
class CloseStory extends TdFunction {
  const CloseStory({required this.storyPosterChatId, required this.storyId});

  /// [storyPosterChatId] The identifier of the poster of the story to close
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'closeStory';

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
