import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an animated emoji
@immutable
class MessageAnimatedEmoji extends MessageContent {
  const MessageAnimatedEmoji({
    required this.animatedEmoji,
    required this.emoji,
  });

  /// [animatedEmoji] The animated emoji
  final AnimatedEmoji animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;

  static const String constructor = 'messageAnimatedEmoji';

  static MessageAnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimatedEmoji(
      animatedEmoji: AnimatedEmoji.fromJson(
          json['animated_emoji'] as Map<String, dynamic>?)!,
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animated_emoji': animatedEmoji.toJson(),
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
