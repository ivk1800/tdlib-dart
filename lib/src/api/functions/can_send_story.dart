import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether the current user can send a story on behalf of a chat;
/// requires can_post_stories right for supergroup and channel chats
/// Returns [CanSendStoryResult]
@immutable
class CanSendStory extends TdFunction {
  const CanSendStory({
    required this.chatId,
  });

  /// [chatId] Chat identifier. Pass Saved Messages chat identifier when posting
  /// a story on behalf of the current user
  final int chatId;

  static const String constructor = 'canSendStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
