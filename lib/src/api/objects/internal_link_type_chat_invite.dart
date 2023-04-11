import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a chat invite link. Call checkChatInviteLink with the given
/// invite link to process the link
@immutable
class InternalLinkTypeChatInvite extends InternalLinkType {
  const InternalLinkTypeChatInvite({
    required this.inviteLink,
  });

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeChatInvite';

  static InternalLinkTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatInvite(
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
