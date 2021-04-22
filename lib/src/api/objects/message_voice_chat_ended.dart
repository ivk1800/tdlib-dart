import '../tdapi.dart';

/// A message with information about an ended voice chat
class MessageVoiceChatEnded extends MessageContent {
  MessageVoiceChatEnded({required this.duration});

  /// [duration] Call duration
  final int duration;

  static const String CONSTRUCTOR = 'messageVoiceChatEnded';

  static MessageVoiceChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceChatEnded(duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'duration': this.duration, '@type': CONSTRUCTOR};
}
