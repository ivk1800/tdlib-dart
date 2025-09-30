import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a story posted by the bot on behalf of a business account; for
/// bots only
/// Returns [Story]
@immutable
class EditBusinessStory extends TdFunction {
  const EditBusinessStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.content,
    required this.areas,
    required this.caption,
    required this.privacySettings,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story
  final InputStoryContent content;

  /// [areas] New clickable rectangle areas to be shown on the story media
  final InputStoryAreas areas;

  /// [caption] New story caption
  final FormattedText caption;

  /// [privacySettings] The new privacy settings for the story
  final StoryPrivacySettings privacySettings;

  static const String constructor = 'editBusinessStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'content': content.toJson(),
    'areas': areas.toJson(),
    'caption': caption.toJson(),
    'privacy_settings': privacySettings.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
