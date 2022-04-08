import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads more chats from a chat list. The loaded chats and their positions in
/// the chat list will be sent through updates. Chats are sorted by the pair
/// (chat.position.order, chat.id) in descending order. Returns a 404 error if
/// all chats have been loaded
/// Returns [Ok]
@immutable
class LoadChats extends TdFunction {
  const LoadChats({
    this.chatList,
    required this.limit,
  });

  /// [chatList] The chat list in which to load chats; pass null to load chats
  /// from the main chat list
  final ChatList? chatList;

  /// [limit] The maximum number of chats to be loaded. For optimal performance,
  /// the number of loaded chats is chosen by TDLib and can be smaller than the
  /// specified limit, even if the end of the list is not reached
  final int limit;

  static const String constructor = 'loadChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList?.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
