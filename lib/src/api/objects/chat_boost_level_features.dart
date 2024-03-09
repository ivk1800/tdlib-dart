import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of features available on a specific chat boost level
@immutable
class ChatBoostLevelFeatures extends TdObject {
  const ChatBoostLevelFeatures({
    required this.level,
    required this.storyPerDayCount,
    required this.customEmojiReactionCount,
    required this.titleColorCount,
    required this.profileAccentColorCount,
    required this.canSetProfileBackgroundCustomEmoji,
    required this.accentColorCount,
    required this.canSetBackgroundCustomEmoji,
    required this.canSetEmojiStatus,
    required this.chatThemeBackgroundCount,
    required this.canSetCustomBackground,
    required this.canSetCustomEmojiStickerSet,
    required this.canRecognizeSpeech,
  });

  /// [level] Target chat boost level
  final int level;

  /// [storyPerDayCount] Number of stories that the chat can publish daily
  final int storyPerDayCount;

  /// [customEmojiReactionCount] Number of custom emoji reactions that can be
  /// added to the list of available reactions
  final int customEmojiReactionCount;

  /// [titleColorCount] Number of custom colors for chat title
  final int titleColorCount;

  /// [profileAccentColorCount] Number of custom colors for profile photo
  /// background
  final int profileAccentColorCount;

  /// [canSetProfileBackgroundCustomEmoji] True, if custom emoji for profile
  /// background can be set
  final bool canSetProfileBackgroundCustomEmoji;

  /// [accentColorCount] Number of custom colors for background of empty chat
  /// photo, replies to messages and link previews
  final int accentColorCount;

  /// [canSetBackgroundCustomEmoji] True, if custom emoji for reply header and
  /// link preview background can be set
  final bool canSetBackgroundCustomEmoji;

  /// [canSetEmojiStatus] True, if emoji status can be set
  final bool canSetEmojiStatus;

  /// [chatThemeBackgroundCount] Number of chat theme backgrounds that can be
  /// set as chat background
  final int chatThemeBackgroundCount;

  /// [canSetCustomBackground] True, if custom background can be set in the chat
  /// for all users
  final bool canSetCustomBackground;

  /// [canSetCustomEmojiStickerSet] True, if custom emoji sticker set can be set
  /// for the chat
  final bool canSetCustomEmojiStickerSet;

  /// [canRecognizeSpeech] True, if speech recognition can be used for video
  /// note and voice note messages by all users
  final bool canRecognizeSpeech;

  static const String constructor = 'chatBoostLevelFeatures';

  static ChatBoostLevelFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostLevelFeatures(
      level: json['level'] as int,
      storyPerDayCount: json['story_per_day_count'] as int,
      customEmojiReactionCount: json['custom_emoji_reaction_count'] as int,
      titleColorCount: json['title_color_count'] as int,
      profileAccentColorCount: json['profile_accent_color_count'] as int,
      canSetProfileBackgroundCustomEmoji:
          json['can_set_profile_background_custom_emoji'] as bool,
      accentColorCount: json['accent_color_count'] as int,
      canSetBackgroundCustomEmoji:
          json['can_set_background_custom_emoji'] as bool,
      canSetEmojiStatus: json['can_set_emoji_status'] as bool,
      chatThemeBackgroundCount: json['chat_theme_background_count'] as int,
      canSetCustomBackground: json['can_set_custom_background'] as bool,
      canSetCustomEmojiStickerSet:
          json['can_set_custom_emoji_sticker_set'] as bool,
      canRecognizeSpeech: json['can_recognize_speech'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'level': level,
        'story_per_day_count': storyPerDayCount,
        'custom_emoji_reaction_count': customEmojiReactionCount,
        'title_color_count': titleColorCount,
        'profile_accent_color_count': profileAccentColorCount,
        'can_set_profile_background_custom_emoji':
            canSetProfileBackgroundCustomEmoji,
        'accent_color_count': accentColorCount,
        'can_set_background_custom_emoji': canSetBackgroundCustomEmoji,
        'can_set_emoji_status': canSetEmojiStatus,
        'chat_theme_background_count': chatThemeBackgroundCount,
        'can_set_custom_background': canSetCustomBackground,
        'can_set_custom_emoji_sticker_set': canSetCustomEmojiStickerSet,
        'can_recognize_speech': canRecognizeSpeech,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
