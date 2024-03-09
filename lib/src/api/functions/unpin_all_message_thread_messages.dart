import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes all pinned messages from a forum topic; requires can_pin_messages
/// member right in the supergroup
/// Returns [Ok]
@immutable
class UnpinAllMessageThreadMessages extends TdFunction {
  const UnpinAllMessageThreadMessages({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier in which messages will be
  /// unpinned
  final int messageThreadId;

  static const String constructor = 'unpinAllMessageThreadMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
