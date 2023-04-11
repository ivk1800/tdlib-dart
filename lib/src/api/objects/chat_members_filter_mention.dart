import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users which can be mentioned in the chat
@immutable
class ChatMembersFilterMention extends ChatMembersFilter {
  const ChatMembersFilterMention({
    required this.messageThreadId,
  });

  /// [messageThreadId] If non-zero, the identifier of the current message
  /// thread
  final int messageThreadId;

  static const String constructor = 'chatMembersFilterMention';

  static ChatMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembersFilterMention(
      messageThreadId: json['message_thread_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
