import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with information about an invite to a video chat
class MessageInviteVideoChatParticipants extends MessageContent {
  MessageInviteVideoChatParticipants(
      {required this.groupCallId, required this.userIds});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;

  static const String CONSTRUCTOR = 'messageInviteVideoChatParticipants';

  static MessageInviteVideoChatParticipants? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInviteVideoChatParticipants(
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
