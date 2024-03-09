import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the draft message in a chat
/// Returns [Ok]
@immutable
class SetChatDraftMessage extends TdFunction {
  const SetChatDraftMessage({
    required this.chatId,
    required this.messageThreadId,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the
  /// draft was changed
  final int messageThreadId;

  /// [draftMessage] New draft message; pass null to remove the draft. All files
  /// in draft message content must be of the type inputFileLocal. Media
  /// thumbnails and captions are ignored
  final DraftMessage? draftMessage;

  static const String constructor = 'setChatDraftMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
