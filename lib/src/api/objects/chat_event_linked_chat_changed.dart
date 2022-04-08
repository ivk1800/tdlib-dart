import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The linked chat of a supergroup was changed
@immutable
class ChatEventLinkedChatChanged extends ChatEventAction {
  const ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  static const String constructor = 'chatEventLinkedChatChanged';

  static ChatEventLinkedChatChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLinkedChatChanged(
      oldLinkedChatId: json['old_linked_chat_id'],
      newLinkedChatId: json['new_linked_chat_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_linked_chat_id': oldLinkedChatId,
        'new_linked_chat_id': newLinkedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
