import '../tdapi.dart';

/// A newly created voice chat
class MessageVoiceChatStarted extends MessageContent {
  MessageVoiceChatStarted({required this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String CONSTRUCTOR = 'messageVoiceChatStarted';

  static MessageVoiceChatStarted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceChatStarted(groupCallId: json['group_call_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
