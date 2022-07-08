import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Blocks an original sender of a message in the Replies chat
/// Returns [Ok]
@immutable
class BlockMessageSenderFromReplies extends TdFunction {
  const BlockMessageSenderFromReplies({
    required this.messageId,
    required this.deleteMessage,
    required this.deleteAllMessages,
    required this.reportSpam,
  });

  /// [messageId] The identifier of an incoming message in the Replies chat
  final int messageId;

  /// [deleteMessage] Pass true to delete the message
  final bool deleteMessage;

  /// [deleteAllMessages] Pass true to delete all messages from the same sender
  final bool deleteAllMessages;

  /// [reportSpam] Pass true to report the sender to the Telegram moderators
  final bool reportSpam;

  static const String constructor = 'blockMessageSenderFromReplies';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'delete_message': deleteMessage,
        'delete_all_messages': deleteAllMessages,
        'report_spam': reportSpam,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
