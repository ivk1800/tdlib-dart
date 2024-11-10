import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an effect added to a message
@immutable
class MessageEffect extends TdObject {
  const MessageEffect({
    required this.id,
    this.staticIcon,
    required this.emoji,
    required this.isPremium,
    required this.type,
  });

  /// [id] Unique identifier of the effect
  final int id;

  /// [staticIcon] Static icon for the effect in WEBP format; may be null if
  /// none
  final Sticker? staticIcon;

  /// [emoji] Emoji corresponding to the effect that can be used if static icon
  /// isn't available
  final String emoji;

  /// [isPremium] True, if Telegram Premium subscription is required to use the
  /// effect
  final bool isPremium;

  /// [type] Type of the effect
  final MessageEffectType type;

  static const String constructor = 'messageEffect';

  static MessageEffect? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffect(
      id: int.tryParse(json['id']) ?? 0,
      staticIcon:
          Sticker.fromJson(json['static_icon'] as Map<String, dynamic>?),
      emoji: json['emoji'] as String,
      isPremium: json['is_premium'] as bool,
      type: MessageEffectType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'static_icon': staticIcon?.toJson(),
        'emoji': emoji,
        'is_premium': isPremium,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
