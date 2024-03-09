import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of features available on the first chat boost levels
@immutable
class ChatBoostFeatures extends TdObject {
  const ChatBoostFeatures({
    required this.features,
    required this.minProfileBackgroundCustomEmojiBoostLevel,
    required this.minBackgroundCustomEmojiBoostLevel,
    required this.minEmojiStatusBoostLevel,
    required this.minChatThemeBackgroundBoostLevel,
    required this.minCustomBackgroundBoostLevel,
    required this.minCustomEmojiStickerSetBoostLevel,
    required this.minSpeechRecognitionBoostLevel,
  });

  /// [features] The list of features
  final List<ChatBoostLevelFeatures> features;

  /// [minProfileBackgroundCustomEmojiBoostLevel] The minimum boost level
  /// required to set custom emoji for profile background
  final int minProfileBackgroundCustomEmojiBoostLevel;

  /// [minBackgroundCustomEmojiBoostLevel] The minimum boost level required to
  /// set custom emoji for reply header and link preview background; for channel
  /// chats only
  final int minBackgroundCustomEmojiBoostLevel;

  /// [minEmojiStatusBoostLevel] The minimum boost level required to set emoji
  /// status
  final int minEmojiStatusBoostLevel;

  /// [minChatThemeBackgroundBoostLevel] The minimum boost level required to set
  /// a chat theme background as chat background
  final int minChatThemeBackgroundBoostLevel;

  /// [minCustomBackgroundBoostLevel] The minimum boost level required to set
  /// custom chat background
  final int minCustomBackgroundBoostLevel;

  /// [minCustomEmojiStickerSetBoostLevel] The minimum boost level required to
  /// set custom emoji sticker set for the chat; for supergroup chats only
  final int minCustomEmojiStickerSetBoostLevel;

  /// [minSpeechRecognitionBoostLevel] The minimum boost level allowing to
  /// recognize speech in video note and voice note messages for non-Premium
  /// users; for supergroup chats only
  final int minSpeechRecognitionBoostLevel;

  static const String constructor = 'chatBoostFeatures';

  static ChatBoostFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostFeatures(
      features: List<ChatBoostLevelFeatures>.from(
          ((json['features'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatBoostLevelFeatures.fromJson(item))
              .toList()),
      minProfileBackgroundCustomEmojiBoostLevel:
          json['min_profile_background_custom_emoji_boost_level'] as int,
      minBackgroundCustomEmojiBoostLevel:
          json['min_background_custom_emoji_boost_level'] as int,
      minEmojiStatusBoostLevel: json['min_emoji_status_boost_level'] as int,
      minChatThemeBackgroundBoostLevel:
          json['min_chat_theme_background_boost_level'] as int,
      minCustomBackgroundBoostLevel:
          json['min_custom_background_boost_level'] as int,
      minCustomEmojiStickerSetBoostLevel:
          json['min_custom_emoji_sticker_set_boost_level'] as int,
      minSpeechRecognitionBoostLevel:
          json['min_speech_recognition_boost_level'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'features': features.map((item) => item.toJson()).toList(),
        'min_profile_background_custom_emoji_boost_level':
            minProfileBackgroundCustomEmojiBoostLevel,
        'min_background_custom_emoji_boost_level':
            minBackgroundCustomEmojiBoostLevel,
        'min_emoji_status_boost_level': minEmojiStatusBoostLevel,
        'min_chat_theme_background_boost_level':
            minChatThemeBackgroundBoostLevel,
        'min_custom_background_boost_level': minCustomBackgroundBoostLevel,
        'min_custom_emoji_sticker_set_boost_level':
            minCustomEmojiStickerSetBoostLevel,
        'min_speech_recognition_boost_level': minSpeechRecognitionBoostLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
