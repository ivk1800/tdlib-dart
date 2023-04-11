import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with information about an invite to a video chat
@immutable
class MessageInviteVideoChatParticipants extends MessageContent {
  const MessageInviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;

  static const String constructor = 'messageInviteVideoChatParticipants';

  static MessageInviteVideoChatParticipants? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInviteVideoChatParticipants(
      groupCallId: json['group_call_id'] as int,
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
