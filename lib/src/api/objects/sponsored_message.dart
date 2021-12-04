import '../tdapi.dart';

/// Describes a sponsored message
class SponsoredMessage extends TdObject {
  SponsoredMessage(
      {required this.id,
      required this.sponsorChatId,
      this.link,
      required this.content});

  /// [id] Unique sponsored message identifier
  final int id;

  /// [sponsorChatId] Chat identifier
  final int sponsorChatId;

  /// [link] An internal link to be opened when the sponsored message is
  /// clicked; may be null. If null, the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// [content] Content of the message
  final MessageContent content;

  static const String CONSTRUCTOR = 'sponsoredMessage';

  static SponsoredMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessage(
        id: json['id'],
        sponsorChatId: json['sponsor_chat_id'],
        link: InternalLinkType.fromJson(json['link']),
        content: MessageContent.fromJson(json['content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sponsor_chat_id': this.sponsorChatId,
        'link': this.link?.toJson(),
        'content': this.content.toJson(),
        '@type': CONSTRUCTOR
      };
}
