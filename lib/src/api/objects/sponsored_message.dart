import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sponsored message
@immutable
class SponsoredMessage extends TdObject {
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.sponsorChatId,
    this.sponsorChatInfo,
    required this.showChatPhoto,
    this.link,
    required this.content,
    required this.sponsorInfo,
    required this.additionalInfo,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored
  /// message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended"
  /// instead of "sponsored"
  final bool isRecommended;

  /// [sponsorChatId] Sponsor chat identifier; 0 if the sponsor chat is
  /// accessible through an invite link
  final int sponsorChatId;

  /// [sponsorChatInfo] Information about the sponsor chat; may be null unless
  /// sponsor_chat_id == 0
  final ChatInviteLinkInfo? sponsorChatInfo;

  /// [showChatPhoto] True, if the sponsor's chat photo must be shown
  final bool showChatPhoto;

  /// [link] An internal link to be opened when the sponsored message is
  /// clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// [content] Content of the message. Currently, can be only of the type
  /// messageText
  final MessageContent content;

  /// [sponsorInfo] If non-empty, information about the sponsor to be shown
  /// along with the message
  final String sponsorInfo;

  /// [additionalInfo] If non-empty, additional information about the sponsored
  /// message to be shown along with the message
  final String additionalInfo;

  static const String constructor = 'sponsoredMessage';

  static SponsoredMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessage(
      messageId: json['message_id'] as int,
      isRecommended: json['is_recommended'] as bool,
      sponsorChatId: json['sponsor_chat_id'] as int,
      sponsorChatInfo: ChatInviteLinkInfo.fromJson(
          json['sponsor_chat_info'] as Map<String, dynamic>?),
      showChatPhoto: json['show_chat_photo'] as bool,
      link: InternalLinkType.fromJson(json['link'] as Map<String, dynamic>?),
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      sponsorInfo: json['sponsor_info'] as String,
      additionalInfo: json['additional_info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'is_recommended': isRecommended,
        'sponsor_chat_id': sponsorChatId,
        'sponsor_chat_info': sponsorChatInfo?.toJson(),
        'show_chat_photo': showChatPhoto,
        'link': link?.toJson(),
        'content': content.toJson(),
        'sponsor_info': sponsorInfo,
        'additional_info': additionalInfo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
