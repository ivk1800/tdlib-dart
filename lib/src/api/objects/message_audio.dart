import '../tdapi.dart';

/// An audio message
class MessageAudio extends MessageContent {
  MessageAudio({required this.audio, required this.caption});

  /// [audio] The audio description
  final Audio audio;

  /// [caption] Audio caption
  final FormattedText caption;

  static const String CONSTRUCTOR = 'messageAudio';

  static MessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAudio(
        audio: Audio.fromJson(json['audio'])!,
        caption: FormattedText.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'audio': this.audio.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR
      };
}
