import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of an emoji category
@immutable
abstract class EmojiCategoryType extends TdObject {
  const EmojiCategoryType();

  static const String constructor = 'emojiCategoryType';

  /// Inherited by:
  /// [EmojiCategoryTypeChatPhoto]
  /// [EmojiCategoryTypeDefault]
  /// [EmojiCategoryTypeEmojiStatus]
  static EmojiCategoryType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiCategoryTypeChatPhoto.constructor:
        return EmojiCategoryTypeChatPhoto.fromJson(json);
      case EmojiCategoryTypeDefault.constructor:
        return EmojiCategoryTypeDefault.fromJson(json);
      case EmojiCategoryTypeEmojiStatus.constructor:
        return EmojiCategoryTypeEmojiStatus.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
