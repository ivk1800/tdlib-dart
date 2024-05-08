import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The category must be used by default (e.g., for custom emoji or animation
/// search)
@immutable
class EmojiCategoryTypeDefault extends EmojiCategoryType {
  const EmojiCategoryTypeDefault();

  static const String constructor = 'emojiCategoryTypeDefault';

  static EmojiCategoryTypeDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeDefault();
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
