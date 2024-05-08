import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Readds quick reply messages which failed to add. Can be called only for
/// messages for which messageSendingStateFailed.can_retry is true and after
/// specified in messageSendingStateFailed.retry_after time passed. If a
/// message is readded, the corresponding failed to send message is deleted.
/// Returns the sent messages in the same order as the message identifiers
/// passed in message_ids. If a message can't be readded, null will be
/// returned instead of the message
/// Returns [QuickReplyMessages]
@immutable
class ReaddQuickReplyShortcutMessages extends TdFunction {
  const ReaddQuickReplyShortcutMessages({
    required this.shortcutName,
    required this.messageIds,
  });

  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [messageIds] Identifiers of the quick reply messages to readd. Message
  /// identifiers must be in a strictly increasing order
  final List<int> messageIds;

  static const String constructor = 'readdQuickReplyShortcutMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_name': shortcutName,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
