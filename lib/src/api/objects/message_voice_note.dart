import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A voice note message
@immutable
class MessageVoiceNote extends MessageContent {
  const MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });

  /// [voiceNote] The voice note description
  final VoiceNote voiceNote;

  /// [caption] Voice note caption
  final FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the
  /// voice note
  final bool isListened;

  static const String constructor = 'messageVoiceNote';

  static MessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceNote(
      voiceNote: VoiceNote.fromJson(json['voice_note'])!,
      caption: FormattedText.fromJson(json['caption'])!,
      isListened: json['is_listened'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'caption': caption.toJson(),
        'is_listened': isListened,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
