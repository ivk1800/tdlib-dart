import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The linked chat of a supergroup was changed
class ChatEventLinkedChatChanged extends ChatEventAction {
  ChatEventLinkedChatChanged(
      {required this.oldLinkedChatId, required this.newLinkedChatId});

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  static const String CONSTRUCTOR = 'chatEventLinkedChatChanged';

  static ChatEventLinkedChatChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLinkedChatChanged(
        oldLinkedChatId: json['old_linked_chat_id'],
        newLinkedChatId: json['new_linked_chat_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_linked_chat_id': this.oldLinkedChatId,
        'new_linked_chat_id': this.newLinkedChatId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
