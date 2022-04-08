import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an ordered list of chats from the beginning of a chat list. For
/// informational purposes only. Use loadChats and updates processing instead
/// to maintain chat lists in a consistent state
/// Returns [Chats]
@immutable
class GetChats extends TdFunction {
  const GetChats({
    this.chatList,
    required this.limit,
  });

  /// [chatList] The chat list in which to return chats; pass null to get chats
  /// from the main chat list
  final ChatList? chatList;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'getChats';

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
