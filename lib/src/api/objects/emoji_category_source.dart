import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of stickers for an emoji category
@immutable
abstract class EmojiCategorySource extends TdObject {
  const EmojiCategorySource();

  static const String constructor = 'emojiCategorySource';

  /// Inherited by:
  /// [EmojiCategorySourcePremium]
  /// [EmojiCategorySourceSearch]
  static EmojiCategorySource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiCategorySourcePremium.constructor:
        return EmojiCategorySourcePremium.fromJson(json);
      case EmojiCategorySourceSearch.constructor:
        return EmojiCategorySourceSearch.fromJson(json);
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
