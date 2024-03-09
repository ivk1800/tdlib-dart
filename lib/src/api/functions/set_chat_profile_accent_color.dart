import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji for profile of a
/// supergroup or channel chat. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatProfileAccentColor extends TdFunction {
  const SetChatProfileAccentColor({
    required this.chatId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [profileAccentColorId] Identifier of the accent color to use for profile;
  /// pass -1 if none. The chat must have at least
  /// profileAccentColor.min_supergroup_chat_boost_level for supergroups or
  /// profileAccentColor.min_channel_chat_boost_level for channels boost level
  /// to pass the corresponding color
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the chat's profile photo background; 0 if none. Use
  /// chatBoostLevelFeatures.can_set_profile_background_custom_emoji to check
  /// whether a custom emoji can be set
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'setChatProfileAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
