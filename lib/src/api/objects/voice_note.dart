import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a voice note. The voice note must be encoded with the Opus
/// codec, and stored inside an OGG container. Voice notes can have only a
/// single audio channel
class VoiceNote extends TdObject {
  VoiceNote(
      {required this.duration,
      required this.waveform,
      required this.mimeType,
      required this.voice});

  /// [duration] Duration of the voice note, in seconds; as defined by the
  /// sender
  final int duration;

  /// [waveform] A waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [voice] File containing the voice note
  final File voice;

  static const String CONSTRUCTOR = 'voiceNote';

  static VoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VoiceNote(
        duration: json['duration'],
        waveform: json['waveform'],
        mimeType: json['mime_type'],
        voice: File.fromJson(json['voice'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'duration': this.duration,
        'waveform': this.waveform,
        'mime_type': this.mimeType,
        'voice': this.voice.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
