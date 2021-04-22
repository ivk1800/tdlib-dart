import '../tdapi.dart';

/// A message with information about an invite to a voice chat
class MessageInviteVoiceChatParticipants extends MessageContent {
  MessageInviteVoiceChatParticipants(
      {required this.groupCallId, required this.userIds});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;

  static const String CONSTRUCTOR = 'messageInviteVoiceChatParticipants';

  static MessageInviteVoiceChatParticipants? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInviteVoiceChatParticipants(
        groupCallId: json['group_call_id'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
