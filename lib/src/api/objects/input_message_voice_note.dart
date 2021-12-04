import '../tdapi.dart';

/// A voice note message
class InputMessageVoiceNote extends InputMessageContent {
  InputMessageVoiceNote(
      {required this.voiceNote,
      required this.duration,
      required this.waveform,
      this.caption});

  /// [voiceNote] Voice note to be sent
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format
  final String waveform;

  /// [caption] Voice note caption; pass null to use an empty caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String CONSTRUCTOR = 'inputMessageVoiceNote';

  static InputMessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVoiceNote(
        voiceNote: InputFile.fromJson(json['voice_note'])!,
        duration: json['duration'],
        waveform: json['waveform'],
        caption: FormattedText.fromJson(json['caption']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'voice_note': this.voiceNote.toJson(),
        'duration': this.duration,
        'waveform': this.waveform,
        'caption': this.caption?.toJson(),
        '@type': CONSTRUCTOR
      };
}
