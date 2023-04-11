import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message pinned state was changed
@immutable
class UpdateMessageIsPinned extends Update {
  const UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier
  final int messageId;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  static const String constructor = 'updateMessageIsPinned';

  static UpdateMessageIsPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageIsPinned(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
