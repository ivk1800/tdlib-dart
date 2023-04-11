import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation message (GIF-style).
@immutable
class PushMessageContentAnimation extends PushMessageContent {
  const PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });

  /// [animation] Message content; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final String caption;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentAnimation';

  static PushMessageContentAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAnimation(
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
      caption: json['caption'] as String,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation?.toJson(),
        'caption': caption,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
