import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Blocks an original sender of a message in the Replies chat
/// Returns [Ok]
class BlockMessageSenderFromReplies extends TdFunction {
  BlockMessageSenderFromReplies(
      {required this.messageId,
      required this.deleteMessage,
      required this.deleteAllMessages,
      required this.reportSpam});

  /// [messageId] The identifier of an incoming message in the Replies chat
  final int messageId;

  /// [deleteMessage] Pass true if the message must be deleted
  final bool deleteMessage;

  /// [deleteAllMessages] Pass true if all messages from the same sender must be
  /// deleted
  final bool deleteAllMessages;

  /// [reportSpam] Pass true if the sender must be reported to the Telegram
  /// moderators
  final bool reportSpam;

  static const String CONSTRUCTOR = 'blockMessageSenderFromReplies';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_id': this.messageId,
        'delete_message': this.deleteMessage,
        'delete_all_messages': this.deleteAllMessages,
        'report_spam': this.reportSpam,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
