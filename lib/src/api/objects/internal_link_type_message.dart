import '../tdapi.dart';

/// The link is a link to a Telegram message. Call getMessageLinkInfo with the
/// given URL to process the link
class InternalLinkTypeMessage extends InternalLinkType {
  InternalLinkTypeMessage({required this.url});

  /// [url] URL to be passed to getMessageLinkInfo
  final String url;

  static const String CONSTRUCTOR = 'internalLinkTypeMessage';

  static InternalLinkTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessage(url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'url': this.url, '@type': CONSTRUCTOR};
}
