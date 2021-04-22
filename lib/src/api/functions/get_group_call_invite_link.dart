import '../tdapi.dart';

/// Returns invite link to a voice chat in a public chat
/// Returns [HttpUrl]
class GetGroupCallInviteLink extends TdFunction {
  GetGroupCallInviteLink(
      {required this.groupCallId, required this.canSelfUnmute});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [canSelfUnmute] Pass true if the invite_link should contain an invite
  /// hash, passing which to joinGroupCall would allow the invited user to
  /// unmute themself. Requires groupCall.can_be_managed group call flag
  final bool canSelfUnmute;

  static const String CONSTRUCTOR = 'getGroupCallInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'can_self_unmute': this.canSelfUnmute,
        '@type': CONSTRUCTOR
      };
}
