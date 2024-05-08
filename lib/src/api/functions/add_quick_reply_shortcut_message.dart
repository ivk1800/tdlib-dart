import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a message to a quick reply shortcut. If shortcut doesn't exist and
/// there are less than getOption("quick_reply_shortcut_count_max") shortcuts,
/// then a new shortcut is created. The shortcut must not contain more than
/// getOption("quick_reply_shortcut_message_count_max") messages after adding
/// the new message. Returns the added message
/// Returns [QuickReplyMessage]
@immutable
class AddQuickReplyShortcutMessage extends TdFunction {
  const AddQuickReplyShortcutMessage({
    required this.shortcutName,
    required this.replyToMessageId,
    required this.inputMessageContent,
  });

  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [replyToMessageId] Identifier of a quick reply message in the same
  /// shortcut to be replied; pass 0 if none
  final int replyToMessageId;

  /// [inputMessageContent] The content of the message to be added;
  /// inputMessagePoll, inputMessageForwarded and inputMessageLocation with
  /// live_period aren't supported
  final InputMessageContent inputMessageContent;

  static const String constructor = 'addQuickReplyShortcutMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_name': shortcutName,
        'reply_to_message_id': replyToMessageId,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
