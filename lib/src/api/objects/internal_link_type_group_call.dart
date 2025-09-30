import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a group call that isn't bound to a chat. Use
/// getGroupCallParticipants to get the list of group call participants and
/// show them on the join group call screen. Call joinGroupCall with the given
/// invite_link to join the call
@immutable
class InternalLinkTypeGroupCall extends InternalLinkType {
  const InternalLinkTypeGroupCall({required this.inviteLink});

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeGroupCall';

  static InternalLinkTypeGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGroupCall(inviteLink: json['invite_link'] as String);
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
