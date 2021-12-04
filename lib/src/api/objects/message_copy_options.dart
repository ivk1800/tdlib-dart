import '../tdapi.dart';

/// Options to be used when a message content is copied without reference to
/// the original sender. Service messages and messageInvoice can't be copied
class MessageCopyOptions extends TdObject {
  MessageCopyOptions(
      {required this.sendCopy, required this.replaceCaption, this.newCaption});

  /// [sendCopy] True, if content of the message needs to be copied without
  /// reference to the original sender. Always true if the message is forwarded
  /// to a secret chat or is local
  final bool sendCopy;

  /// [replaceCaption] True, if media caption of the message copy needs to be
  /// replaced. Ignored if send_copy is false
  final bool replaceCaption;

  /// [newCaption] New message caption; pass null to copy message without
  /// caption. Ignored if replace_caption is false
  final FormattedText? newCaption;

  static const String CONSTRUCTOR = 'messageCopyOptions';

  static MessageCopyOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCopyOptions(
        sendCopy: json['send_copy'],
        replaceCaption: json['replace_caption'],
        newCaption: FormattedText.fromJson(json['new_caption']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'send_copy': this.sendCopy,
        'replace_caption': this.replaceCaption,
        'new_caption': this.newCaption?.toJson(),
        '@type': CONSTRUCTOR
      };
}
