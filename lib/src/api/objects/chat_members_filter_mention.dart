import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns users which can be mentioned in the chat
class ChatMembersFilterMention extends ChatMembersFilter {
  ChatMembersFilterMention({required this.messageThreadId});

  /// [messageThreadId] If non-zero, the identifier of the current message
  /// thread
  final int messageThreadId;

  static const String CONSTRUCTOR = 'chatMembersFilterMention';

  static ChatMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembersFilterMention(messageThreadId: json['message_thread_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message_thread_id': this.messageThreadId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
