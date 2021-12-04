import '../tdapi.dart';

/// The link is a chat invite link. Call checkChatInviteLink with the given
/// invite link to process the link
class InternalLinkTypeChatInvite extends InternalLinkType {
  InternalLinkTypeChatInvite({required this.inviteLink});

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String CONSTRUCTOR = 'internalLinkTypeChatInvite';

  static InternalLinkTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatInvite(inviteLink: json['invite_link']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink, '@type': CONSTRUCTOR};
}
