import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a voice note. The voice note must be encoded with the Opus
/// codec, and stored inside an OGG container. Voice notes can have only a
/// single audio channel
@immutable
class VoiceNote extends TdObject {
  const VoiceNote({
    required this.duration,
    required this.waveform,
    required this.mimeType,
    required this.voice,
  });

  /// [duration] Duration of the voice note, in seconds; as defined by the
  /// sender
  final int duration;

  /// [waveform] A waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [voice] File containing the voice note
  final File voice;

  static const String constructor = 'voiceNote';

  static VoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VoiceNote(
      duration: json['duration'],
      waveform: json['waveform'],
      mimeType: json['mime_type'],
      voice: File.fromJson(json['voice'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'waveform': waveform,
        'mime_type': mimeType,
        'voice': voice.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
