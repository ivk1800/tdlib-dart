import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns invite link to a video chat in a public chat
/// Returns [HttpUrl]
@immutable
class GetVideoChatInviteLink extends TdFunction {
  const GetVideoChatInviteLink({
    required this.groupCallId,
    required this.canSelfUnmute,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [canSelfUnmute] Pass true if the invite link needs to contain an invite
  /// hash, passing which to joinVideoChat would allow the invited user to
  /// unmute themselves. Requires groupCall.can_be_managed right
  final bool canSelfUnmute;

  static const String constructor = 'getVideoChatInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'can_self_unmute': canSelfUnmute,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
