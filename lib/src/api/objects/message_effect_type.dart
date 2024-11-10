import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of emoji effect
@immutable
abstract class MessageEffectType extends TdObject {
  const MessageEffectType();

  static const String constructor = 'messageEffectType';

  /// Inherited by:
  /// [MessageEffectTypeEmojiReaction]
  /// [MessageEffectTypePremiumSticker]
  static MessageEffectType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageEffectTypeEmojiReaction.constructor:
        return MessageEffectTypeEmojiReaction.fromJson(json);
      case MessageEffectTypePremiumSticker.constructor:
        return MessageEffectTypePremiumSticker.fromJson(json);
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
