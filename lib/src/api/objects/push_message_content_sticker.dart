import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a sticker
@immutable
class PushMessageContentSticker extends PushMessageContent {
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });

  /// [sticker] Message content; may be null
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentSticker';

  static PushMessageContentSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentSticker(
      sticker: Sticker.fromJson(json['sticker']),
      emoji: json['emoji'],
      isPinned: json['is_pinned'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker?.toJson(),
        'emoji': emoji,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
