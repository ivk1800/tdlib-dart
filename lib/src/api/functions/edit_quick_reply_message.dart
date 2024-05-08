import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Asynchronously edits the text, media or caption of a quick reply message.
/// Use quickReplyMessage.can_be_edited to check whether a message can be
/// edited. Text message can be edited only to a text message. The type of
/// message content in an album can't be changed with exception of replacing a
/// photo with a video or vice versa
/// Returns [Ok]
@immutable
class EditQuickReplyMessage extends TdFunction {
  const EditQuickReplyMessage({
    required this.shortcutId,
    required this.messageId,
    required this.inputMessageContent,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut with the
  /// message
  final int shortcutId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageText, inputMessageAnimation,
  /// inputMessageAudio, inputMessageDocument, inputMessagePhoto or
  /// inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editQuickReplyMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'message_id': messageId,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
