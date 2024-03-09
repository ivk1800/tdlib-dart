import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a new story to a chat; requires can_post_stories right for
/// supergroup and channel chats. Returns a temporary story
/// Returns [Story]
@immutable
class SendStory extends TdFunction {
  const SendStory({
    required this.chatId,
    required this.content,
    this.areas,
    this.caption,
    required this.privacySettings,
    required this.activePeriod,
    required this.fromStoryFullId,
    required this.isPinned,
    required this.protectContent,
  });

  /// [chatId] Identifier of the chat that will post the story
  final int chatId;

  /// [content] Content of the story
  final InputStoryContent content;

  /// [areas] Clickable rectangle areas to be shown on the story media; pass
  /// null if none
  final InputStoryAreas? areas;

  /// [caption] Story caption; pass null to use an empty caption;
  /// 0-getOption("story_caption_length_max") characters
  final FormattedText? caption;

  /// [privacySettings] The privacy settings for the story; ignored for stories
  /// sent to supergroup and channel chats
  final StoryPrivacySettings privacySettings;

  /// [activePeriod] Period after which the story is moved to archive, in
  /// seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for
  /// Telegram Premium users, and 86400 otherwise
  final int activePeriod;

  /// [fromStoryFullId] Full identifier of the original story, which content was
  /// used to create the story
  final StoryFullId fromStoryFullId;

  /// [isPinned] Pass true to keep the story accessible after expiration
  final bool isPinned;

  /// [protectContent] Pass true if the content of the story must be protected
  /// from forwarding and screenshotting
  final bool protectContent;

  static const String constructor = 'sendStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'content': content.toJson(),
        'areas': areas?.toJson(),
        'caption': caption?.toJson(),
        'privacy_settings': privacySettings.toJson(),
        'active_period': activePeriod,
        'from_story_full_id': fromStoryFullId.toJson(),
        'is_pinned': isPinned,
        'protect_content': protectContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
