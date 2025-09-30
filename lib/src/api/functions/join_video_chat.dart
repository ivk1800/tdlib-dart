import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Joins an active video chat. Returns join response payload for tgcalls
/// Returns [Text]
@immutable
class JoinVideoChat extends TdFunction {
  const JoinVideoChat({
    required this.groupCallId,
    this.participantId,
    required this.joinParameters,
    required this.inviteHash,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Identifier of a group call participant, which will be used
  /// to join the call; pass null to join as self; video chats only
  final MessageSender? participantId;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  /// [inviteHash] Invite hash as received from internalLinkTypeVideoChat
  final String inviteHash;

  static const String constructor = 'joinVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'participant_id': participantId?.toJson(),
    'join_parameters': joinParameters.toJson(),
    'invite_hash': inviteHash,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
