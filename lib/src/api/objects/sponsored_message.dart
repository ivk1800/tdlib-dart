import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sponsored message
@immutable
class SponsoredMessage extends TdObject {
  const SponsoredMessage({
    required this.messageId,
    required this.sponsorChatId,
    this.sponsorChatInfo,
    this.link,
    required this.content,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored
  /// message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [sponsorChatId] Sponsor chat identifier; 0 if the sponsor chat is
  /// accessible through an invite link
  final int sponsorChatId;

  /// [sponsorChatInfo] Information about the sponsor chat; may be null unless
  /// sponsor_chat_id == 0
  final ChatInviteLinkInfo? sponsorChatInfo;

  /// [link] An internal link to be opened when the sponsored message is
  /// clicked; may be null. If null, the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// [content] Content of the message. Currently, can be only of the type
  /// messageText
  final MessageContent content;

  static const String constructor = 'sponsoredMessage';

  static SponsoredMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessage(
      messageId: json['message_id'],
      sponsorChatId: json['sponsor_chat_id'],
      sponsorChatInfo: ChatInviteLinkInfo.fromJson(json['sponsor_chat_info']),
      link: InternalLinkType.fromJson(json['link']),
      content: MessageContent.fromJson(json['content'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'sponsor_chat_id': sponsorChatId,
        'sponsor_chat_info': sponsorChatInfo?.toJson(),
        'link': link?.toJson(),
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
