import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a custom emoji to be shown instead of the Telegram Premium badge
@immutable
class EmojiStatus extends TdObject {
  const EmojiStatus({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format.
  /// If the custom emoji belongs to the sticker set
  /// GetOption("themed_emoji_statuses_sticker_set_id"), then it's color must be
  /// changed to the color of the Telegram Premium badge
  final int customEmojiId;

  static const String constructor = 'emojiStatus';

  static EmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatus(
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
