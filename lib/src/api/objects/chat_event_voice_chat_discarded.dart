import '../tdapi.dart';

/// A voice chat was discarded
class ChatEventVoiceChatDiscarded extends ChatEventAction {
  ChatEventVoiceChatDiscarded({required this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String CONSTRUCTOR = 'chatEventVoiceChatDiscarded';

  static ChatEventVoiceChatDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVoiceChatDiscarded(groupCallId: json['group_call_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
