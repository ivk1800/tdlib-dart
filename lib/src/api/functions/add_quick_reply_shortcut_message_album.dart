import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds 2-10 messages grouped together into an album to a quick reply
/// shortcut. Currently, only audio, document, photo and video messages can be
/// grouped into an album. Documents and audio files can be only grouped in an
/// album with messages of the same type. Returns sent messages
/// Returns [QuickReplyMessages]
@immutable
class AddQuickReplyShortcutMessageAlbum extends TdFunction {
  const AddQuickReplyShortcutMessageAlbum({
    required this.shortcutName,
    required this.replyToMessageId,
    required this.inputMessageContents,
  });

  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [replyToMessageId] Identifier of a quick reply message in the same
  /// shortcut to be replied; pass 0 if none
  final int replyToMessageId;

  /// [inputMessageContents] Contents of messages to be sent. At most 10
  /// messages can be added to an album. All messages must have the same value
  /// of show_caption_above_media
  final List<InputMessageContent> inputMessageContents;

  static const String constructor = 'addQuickReplyShortcutMessageAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_name': shortcutName,
        'reply_to_message_id': replyToMessageId,
        'input_message_contents':
            inputMessageContents.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
