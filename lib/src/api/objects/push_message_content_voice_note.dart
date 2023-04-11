import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A voice note message
@immutable
class PushMessageContentVoiceNote extends PushMessageContent {
  const PushMessageContentVoiceNote({
    this.voiceNote,
    required this.isPinned,
  });

  /// [voiceNote] Message content; may be null
  final VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVoiceNote';

  static PushMessageContentVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVoiceNote(
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?),
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote?.toJson(),
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
