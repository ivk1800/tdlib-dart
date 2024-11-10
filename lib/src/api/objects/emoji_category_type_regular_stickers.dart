import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The category must be used by default for regular sticker selection. It may
/// contain greeting emoji category and premium stickers
@immutable
class EmojiCategoryTypeRegularStickers extends EmojiCategoryType {
  const EmojiCategoryTypeRegularStickers();

  static const String constructor = 'emojiCategoryTypeRegularStickers';

  static EmojiCategoryTypeRegularStickers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeRegularStickers();
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
