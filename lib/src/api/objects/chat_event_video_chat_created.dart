import '../tdapi.dart';

/// A video chat was created
class ChatEventVideoChatCreated extends ChatEventAction {
  ChatEventVideoChatCreated({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String CONSTRUCTOR = 'chatEventVideoChatCreated';

  static ChatEventVideoChatCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatCreated(groupCallId: json['group_call_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
