import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of chats belonging to a chat filter
@immutable
class ChatListFilter extends ChatList {
  const ChatListFilter({
    required this.chatFilterId,
  });

  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;

  static const String constructor = 'chatListFilter';

  static ChatListFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatListFilter(
      chatFilterId: json['chat_filter_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filter_id': chatFilterId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
