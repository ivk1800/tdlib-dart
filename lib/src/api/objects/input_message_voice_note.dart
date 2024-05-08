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
    this.selfDestructType,
  });

  /// [voiceNote] Voice note to be sent. The voice note must be encoded with the
  /// Opus codec and stored inside an OGG container with a single audio channel,
  /// or be in MP3 or M4A format as regular audio
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [caption] Voice note caption; may be null if empty; pass null to use an
  /// empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructType] Voice note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'inputMessageVoiceNote';

  static InputMessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVoiceNote(
      voiceNote:
          InputFile.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      duration: json['duration'] as int,
      waveform: json['waveform'] as String,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
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
        'self_destruct_type': selfDestructType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
