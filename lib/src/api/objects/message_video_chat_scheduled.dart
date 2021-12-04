import '../tdapi.dart';

/// A new video chat was scheduled
class MessageVideoChatScheduled extends MessageContent {
  MessageVideoChatScheduled(
      {required this.groupCallId, required this.startDate});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [startDate] Point in time (Unix timestamp) when the group call is supposed
  /// to be started by an administrator
  final int startDate;

  static const String CONSTRUCTOR = 'messageVideoChatScheduled';

  static MessageVideoChatScheduled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatScheduled(
        groupCallId: json['group_call_id'], startDate: json['start_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'start_date': this.startDate,
        '@type': CONSTRUCTOR
      };
}
