import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat's profile accent color or profile background custom emoji were
/// changed
@immutable
class ChatEventProfileAccentColorChanged extends ChatEventAction {
  const ChatEventProfileAccentColorChanged({
    required this.oldProfileAccentColorId,
    required this.oldProfileBackgroundCustomEmojiId,
    required this.newProfileAccentColorId,
    required this.newProfileBackgroundCustomEmojiId,
  });

  /// [oldProfileAccentColorId] Previous identifier of chat's profile accent
  /// color; -1 if none
  final int oldProfileAccentColorId;

  /// [oldProfileBackgroundCustomEmojiId] Previous identifier of the custom
  /// emoji; 0 if none
  final int oldProfileBackgroundCustomEmojiId;

  /// [newProfileAccentColorId] New identifier of chat's profile accent color;
  /// -1 if none
  final int newProfileAccentColorId;

  /// [newProfileBackgroundCustomEmojiId] New identifier of the custom emoji; 0
  /// if none
  final int newProfileBackgroundCustomEmojiId;

  static const String constructor = 'chatEventProfileAccentColorChanged';

  static ChatEventProfileAccentColorChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventProfileAccentColorChanged(
      oldProfileAccentColorId: json['old_profile_accent_color_id'] as int,
      oldProfileBackgroundCustomEmojiId:
          int.tryParse(json['old_profile_background_custom_emoji_id']) ?? 0,
      newProfileAccentColorId: json['new_profile_accent_color_id'] as int,
      newProfileBackgroundCustomEmojiId:
          int.tryParse(json['new_profile_background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_profile_accent_color_id': oldProfileAccentColorId,
        'old_profile_background_custom_emoji_id':
            oldProfileBackgroundCustomEmojiId.toString(),
        'new_profile_accent_color_id': newProfileAccentColorId,
        'new_profile_background_custom_emoji_id':
            newProfileBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
