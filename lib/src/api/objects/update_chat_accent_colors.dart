import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Chat accent colors have changed
@immutable
class UpdateChatAccentColors extends Update {
  const UpdateChatAccentColors({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] The new chat accent color identifier
  final int accentColorId;

  /// [backgroundCustomEmojiId] The new identifier of a custom emoji to be shown
  /// on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] The new chat profile accent color identifier; -1 if
  /// none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] The new identifier of a custom emoji to
  /// be shown on the profile background; 0 if none
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'updateChatAccentColors';

  static UpdateChatAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAccentColors(
      chatId: json['chat_id'] as int,
      accentColorId: json['accent_color_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
      profileAccentColorId: json['profile_accent_color_id'] as int,
      profileBackgroundCustomEmojiId:
          int.tryParse(json['profile_background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
