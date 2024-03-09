import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the discussion group of a channel chat; requires can_change_info
/// administrator right in the channel if it is specified
/// Returns [Ok]
@immutable
class SetChatDiscussionGroup extends TdFunction {
  const SetChatDiscussionGroup({
    required this.chatId,
    required this.discussionChatId,
  });

  /// [chatId] Identifier of the channel chat. Pass 0 to remove a link from the
  /// supergroup passed in the second argument to a linked channel chat
  /// (requires can_pin_messages member right in the supergroup)
  final int chatId;

  /// [discussionChatId] Identifier of a new channel's discussion group. Use 0
  /// to remove the discussion group. Use the method getSuitableDiscussionChats
  /// to find all suitable groups. Basic group chats must be first upgraded to
  /// supergroup chats. If new chat members don't have access to old messages in
  /// the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used
  /// first to change that
  final int discussionChatId;

  static const String constructor = 'setChatDiscussionGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'discussion_chat_id': discussionChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
