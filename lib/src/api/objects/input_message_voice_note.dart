import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A voice note message
@immutable
class InputMessageVoiceNote extends InputMessageContent {
  const InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    this.caption,
  });

  /// [voiceNote] Voice note to be sent
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format
  final String waveform;

  /// [caption] Voice note caption; pass null to use an empty caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageVoiceNote';

  static InputMessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVoiceNote(
      voiceNote: InputFile.fromJson(json['voice_note'])!,
      duration: json['duration'],
      waveform: json['waveform'],
      caption: FormattedText.fromJson(json['caption']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'duration': duration,
        'waveform': waveform,
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
