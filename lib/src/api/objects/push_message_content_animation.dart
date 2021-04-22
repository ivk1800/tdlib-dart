import '../tdapi.dart';

/// An animation message (GIF-style).
class PushMessageContentAnimation extends PushMessageContent {
  PushMessageContentAnimation(
      {this.animation, required this.caption, required this.isPinned});

  /// [animation] Message content; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final String caption;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentAnimation';

  static PushMessageContentAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAnimation(
        animation: Animation.fromJson(json['animation']),
        caption: json['caption'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation?.toJson(),
        'caption': this.caption,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
