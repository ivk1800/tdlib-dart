import '../tdapi.dart';

/// An audio message
class PushMessageContentAudio extends PushMessageContent {
  PushMessageContentAudio({this.audio, required this.isPinned});

  /// [audio] Message content; may be null
  final Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentAudio';

  static PushMessageContentAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAudio(
        audio: Audio.fromJson(json['audio']), isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'audio': this.audio?.toJson(),
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
