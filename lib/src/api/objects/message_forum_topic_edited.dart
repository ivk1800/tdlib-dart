import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic has been edited
@immutable
class MessageForumTopicEdited extends MessageContent {
  const MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });

  /// [name] If non-empty, the new name of the topic
  final String name;

  /// [editIconCustomEmojiId] True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// [iconCustomEmojiId] New unique identifier of the custom emoji shown on the
  /// topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is
  /// false
  final int iconCustomEmojiId;

  static const String constructor = 'messageForumTopicEdited';

  static MessageForumTopicEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicEdited(
      name: json['name'],
      editIconCustomEmojiId: json['edit_icon_custom_emoji_id'],
      iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'edit_icon_custom_emoji_id': editIconCustomEmojiId,
        'icon_custom_emoji_id': iconCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
