import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat was removed from a chat list
@immutable
class UpdateChatRemovedFromList extends Update {
  const UpdateChatRemovedFromList({
    required this.chatId,
    required this.chatList,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list from which the chat was removed
  final ChatList chatList;

  static const String constructor = 'updateChatRemovedFromList';

  static UpdateChatRemovedFromList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatRemovedFromList(
      chatId: json['chat_id'] as int,
      chatList: ChatList.fromJson(json['chat_list'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'chat_list': chatList.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
