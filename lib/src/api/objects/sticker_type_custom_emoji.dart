import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sticker is a custom emoji to be used inside message text and caption
@immutable
class StickerTypeCustomEmoji extends StickerType {
  const StickerTypeCustomEmoji();

  static const String constructor = 'stickerTypeCustomEmoji';

  static StickerTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeCustomEmoji();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
