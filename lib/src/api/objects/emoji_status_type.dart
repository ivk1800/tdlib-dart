import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of emoji status
@immutable
abstract class EmojiStatusType extends TdObject {
  const EmojiStatusType();

  static const String constructor = 'emojiStatusType';

  /// Inherited by:
  /// [EmojiStatusTypeCustomEmoji]
  /// [EmojiStatusTypeUpgradedGift]
  static EmojiStatusType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiStatusTypeCustomEmoji.constructor:
        return EmojiStatusTypeCustomEmoji.fromJson(json);
      case EmojiStatusTypeUpgradedGift.constructor:
        return EmojiStatusTypeUpgradedGift.fromJson(json);
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
