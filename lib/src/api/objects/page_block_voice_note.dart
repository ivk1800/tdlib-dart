import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A voice note
@immutable
class PageBlockVoiceNote extends PageBlock {
  const PageBlockVoiceNote({
    this.voiceNote,
    required this.caption,
  });

  /// [voiceNote] Voice note; may be null
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockVoiceNote';

  static PageBlockVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVoiceNote(
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote?.toJson(),
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
