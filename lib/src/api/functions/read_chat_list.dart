import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Traverse all chats in a chat list and marks all messages in the chats as
/// read
/// Returns [Ok]
@immutable
class ReadChatList extends TdFunction {
  const ReadChatList({
    required this.chatList,
  });

  /// [chatList] Chat list in which to mark all chats as read
  final ChatList chatList;

  static const String constructor = 'readChatList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
