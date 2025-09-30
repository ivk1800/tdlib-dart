import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a story is accessible after expiration. Can be called only
/// if story.can_toggle_is_posted_to_chat_page == true
/// Returns [Ok]
@immutable
class ToggleStoryIsPostedToChatPage extends TdFunction {
  const ToggleStoryIsPostedToChatPage({
    required this.storyPosterChatId,
    required this.storyId,
    required this.isPostedToChatPage,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story
  final int storyId;

  /// [isPostedToChatPage] Pass true to make the story accessible after
  /// expiration; pass false to make it private
  final bool isPostedToChatPage;

  static const String constructor = 'toggleStoryIsPostedToChatPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'is_posted_to_chat_page': isPostedToChatPage,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
