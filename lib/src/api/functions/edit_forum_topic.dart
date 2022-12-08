import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits title and icon of a topic in a forum supergroup chat; requires
/// can_manage_topics administrator rights in the supergroup unless the user
/// is creator of the topic
/// Returns [Ok]
@immutable
class EditForumTopic extends TdFunction {
  const EditForumTopic({
    required this.chatId,
    required this.messageThreadId,
    required this.name,
    required this.editIconCustomEmoji,
    required this.iconCustomEmojiId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [name] New name of the topic; 0-128 characters. If empty, the previous
  /// topic name is kept
  final String name;

  /// [editIconCustomEmoji] Pass true to edit the icon of the topic. Icon of the
  /// General topic can't be edited
  final bool editIconCustomEmoji;

  /// [iconCustomEmojiId] Identifier of the new custom emoji for topic icon;
  /// pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is
  /// false. Telegram Premium users can use any custom emoji, other users can
  /// use only a custom emoji returned by getForumTopicDefaultIcons
  final int iconCustomEmojiId;

  static const String constructor = 'editForumTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'name': name,
        'edit_icon_custom_emoji': editIconCustomEmoji,
        'icon_custom_emoji_id': iconCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
