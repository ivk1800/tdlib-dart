import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An effect from a premium sticker
@immutable
class MessageEffectTypePremiumSticker extends MessageEffectType {
  const MessageEffectTypePremiumSticker({
    required this.sticker,
  });

  /// [sticker] The premium sticker. The effect can be found at
  /// sticker.full_type.premium_animation
  final Sticker sticker;

  static const String constructor = 'messageEffectTypePremiumSticker';

  static MessageEffectTypePremiumSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffectTypePremiumSticker(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
