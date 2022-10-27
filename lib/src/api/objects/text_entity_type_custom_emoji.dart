import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A custom emoji. The text behind a custom emoji must be an emoji. Only
/// premium users can use premium custom emoji
@immutable
class TextEntityTypeCustomEmoji extends TextEntityType {
  const TextEntityTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  static const String constructor = 'textEntityTypeCustomEmoji';

  static TextEntityTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeCustomEmoji(
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
