import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A custom emoji set as emoji status
@immutable
class EmojiStatusTypeCustomEmoji extends EmojiStatusType {
  const EmojiStatusTypeCustomEmoji({required this.customEmojiId});

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  static const String constructor = 'emojiStatusTypeCustomEmoji';

  static EmojiStatusTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusTypeCustomEmoji(
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
