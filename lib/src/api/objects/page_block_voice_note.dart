import '../tdapi.dart';

/// A voice note
class PageBlockVoiceNote extends PageBlock {
  PageBlockVoiceNote({this.voiceNote, required this.caption});

  /// [voiceNote] Voice note; may be null
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption
  final PageBlockCaption caption;

  static const String CONSTRUCTOR = 'pageBlockVoiceNote';

  static PageBlockVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        caption: PageBlockCaption.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'voice_note': this.voiceNote?.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR
      };
}
