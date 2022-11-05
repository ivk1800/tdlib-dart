import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a forum topic icon
@immutable
class ForumTopicIcon extends TdObject {
  const ForumTopicIcon({
    required this.color,
    required this.customEmojiId,
  });

  /// [color] Color of the topic icon in RGB format
  final int color;

  /// [customEmojiId] Unique identifier of the custom emoji shown on the topic
  /// icon; 0 if none
  final int customEmojiId;

  static const String constructor = 'forumTopicIcon';

  static ForumTopicIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopicIcon(
      color: json['color'],
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'color': color,
        'custom_emoji_id': customEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
