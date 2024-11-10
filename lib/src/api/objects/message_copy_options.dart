import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used when a message content is copied without reference to
/// the original sender. Service messages, messages with messageInvoice,
/// messagePaidMedia, messageGiveaway, or messageGiveawayWinners content can't
/// be copied
@immutable
class MessageCopyOptions extends TdObject {
  const MessageCopyOptions({
    required this.sendCopy,
    required this.replaceCaption,
    this.newCaption,
    required this.newShowCaptionAboveMedia,
  });

  /// [sendCopy] True, if content of the message needs to be copied without
  /// reference to the original sender. Always true if the message is forwarded
  /// to a secret chat or is local. Use messageProperties.can_be_saved and
  /// messageProperties.can_be_copied_to_secret_chat to check whether the
  /// message is suitable
  final bool sendCopy;

  /// [replaceCaption] True, if media caption of the message copy needs to be
  /// replaced. Ignored if send_copy is false
  final bool replaceCaption;

  /// [newCaption] New message caption; pass null to copy message without
  /// caption. Ignored if replace_caption is false
  final FormattedText? newCaption;

  /// [newShowCaptionAboveMedia] True, if new caption must be shown above the
  /// media; otherwise, new caption must be shown below the media; not supported
  /// in secret chats. Ignored if replace_caption is false
  final bool newShowCaptionAboveMedia;

  static const String constructor = 'messageCopyOptions';

  static MessageCopyOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCopyOptions(
      sendCopy: json['send_copy'] as bool,
      replaceCaption: json['replace_caption'] as bool,
      newCaption:
          FormattedText.fromJson(json['new_caption'] as Map<String, dynamic>?),
      newShowCaptionAboveMedia: json['new_show_caption_above_media'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'send_copy': sendCopy,
        'replace_caption': replaceCaption,
        'new_caption': newCaption?.toJson(),
        'new_show_caption_above_media': newShowCaptionAboveMedia,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
