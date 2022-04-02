import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an ordered list of chats from the beginning of a chat list. For
/// informational purposes only. Use loadChats and updates processing instead
/// to maintain chat lists in a consistent state
/// Returns [Chats]
class GetChats extends TdFunction {
  GetChats({this.chatList, required this.limit});

  /// [chatList] The chat list in which to return chats; pass null to get chats
  /// from the main chat list
  final ChatList? chatList;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String CONSTRUCTOR = 'getChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList?.toJson(),
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
