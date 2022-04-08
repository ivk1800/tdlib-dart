import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of pinned chats
/// Returns [Ok]
@immutable
class SetPinnedChats extends TdFunction {
  const SetPinnedChats({
    required this.chatList,
    required this.chatIds,
  });

  /// [chatList] Chat list in which to change the order of pinned chats
  final ChatList chatList;

  /// [chatIds] The new list of pinned chats
  final List<int> chatIds;

  static const String constructor = 'setPinnedChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
