import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The category must be used for chat photo emoji selection
@immutable
class EmojiCategoryTypeChatPhoto extends EmojiCategoryType {
  const EmojiCategoryTypeChatPhoto();

  static const String constructor = 'emojiCategoryTypeChatPhoto';

  static EmojiCategoryTypeChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeChatPhoto();
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
