import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a custom emoji to be shown instead of the Telegram Premium badge
@immutable
class EmojiStatus extends TdObject {
  const EmojiStatus({
    required this.customEmojiId,
    required this.expirationDate,
  });

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  /// [expirationDate] Point in time (Unix timestamp) when the status will
  /// expire; 0 if never
  final int expirationDate;

  static const String constructor = 'emojiStatus';

  static EmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatus(
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
      expirationDate: json['expiration_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId.toString(),
        'expiration_date': expirationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
