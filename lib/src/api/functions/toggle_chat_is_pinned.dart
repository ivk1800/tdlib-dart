import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the pinned state of a chat. There can be up to
/// getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max")
/// pinned non-secret chats and the same number of secret chats in the
/// main/archive chat list. The limit can be increased with Telegram Premium
/// Returns [Ok]
@immutable
class ToggleChatIsPinned extends TdFunction {
  const ToggleChatIsPinned({
    required this.chatList,
    required this.chatId,
    required this.isPinned,
  });

  /// [chatList] Chat list in which to change the pinned state of the chat
  final ChatList chatList;

  /// [chatId] Chat identifier
  final int chatId;

  /// [isPinned] Pass true to pin the chat; pass false to unpin it
  final bool isPinned;

  static const String constructor = 'toggleChatIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        'chat_id': chatId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
