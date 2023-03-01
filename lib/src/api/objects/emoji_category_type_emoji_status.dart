import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The category must be used for emoji status selection
@immutable
class EmojiCategoryTypeEmojiStatus extends EmojiCategoryType {
  const EmojiCategoryTypeEmojiStatus();

  static const String constructor = 'emojiCategoryTypeEmojiStatus';

  static EmojiCategoryTypeEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeEmojiStatus();
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
