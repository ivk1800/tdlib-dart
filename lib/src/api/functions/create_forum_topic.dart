import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a topic in a forum supergroup chat; requires can_manage_topics
/// administrator or can_create_topics member right in the supergroup
/// Returns [ForumTopicInfo]
@immutable
class CreateForumTopic extends TdFunction {
  const CreateForumTopic({
    required this.chatId,
    required this.name,
    required this.icon,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [name] Name of the topic; 1-128 characters
  final String name;

  /// [icon] Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E,
  /// 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use
  /// any custom emoji as topic icon, other users can use only a custom emoji
  /// returned by getForumTopicDefaultIcons
  final ForumTopicIcon icon;

  static const String constructor = 'createForumTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'name': name,
        'icon': icon.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
