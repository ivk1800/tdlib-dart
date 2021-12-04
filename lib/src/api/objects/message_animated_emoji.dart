import '../tdapi.dart';

/// A message with an animated emoji
class MessageAnimatedEmoji extends MessageContent {
  MessageAnimatedEmoji({required this.animatedEmoji, required this.emoji});

  /// [animatedEmoji] The animated emoji
  final AnimatedEmoji animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;

  static const String CONSTRUCTOR = 'messageAnimatedEmoji';

  static MessageAnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimatedEmoji(
        animatedEmoji: AnimatedEmoji.fromJson(json['animated_emoji'])!,
        emoji: json['emoji']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animated_emoji': this.animatedEmoji.toJson(),
        'emoji': this.emoji,
        '@type': CONSTRUCTOR
      };
}
