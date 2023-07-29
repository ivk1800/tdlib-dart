import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a new story. Returns a temporary story with identifier 0
/// Returns [Story]
@immutable
class SendStory extends TdFunction {
  const SendStory({
    required this.content,
    this.caption,
    required this.privacySettings,
    required this.activePeriod,
    required this.isPinned,
    required this.protectContent,
  });

  /// [content] Content of the story
  final InputStoryContent content;

  /// [caption] Story caption; pass null to use an empty caption;
  /// 0-getOption("story_caption_length_max") characters
  final FormattedText? caption;

  /// [privacySettings] The privacy settings for the story
  final StoryPrivacySettings privacySettings;

  /// [activePeriod] Period after which the story is moved to archive, in
  /// seconds; must be one of 6 * 3600, 12 * 3600, 86400, 2 * 86400, 3 * 86400,
  /// or 7 * 86400 for Telegram Premium users, and 86400 otherwise
  final int activePeriod;

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
        'content': content.toJson(),
        'caption': caption?.toJson(),
        'privacy_settings': privacySettings.toJson(),
        'active_period': activePeriod,
        'is_pinned': isPinned,
        'protect_content': protectContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
