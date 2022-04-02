import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a voice note
class InlineQueryResultVoiceNote extends InlineQueryResult {
  InlineQueryResultVoiceNote(
      {required this.id, required this.voiceNote, required this.title});

  /// [id] Unique identifier of the query result
  final String id;

  /// [voiceNote] Voice note
  final VoiceNote voiceNote;

  /// [title] Title of the voice note
  final String title;

  static const String CONSTRUCTOR = 'inlineQueryResultVoiceNote';

  static InlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVoiceNote(
        id: json['id'],
        voiceNote: VoiceNote.fromJson(json['voice_note'])!,
        title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'voice_note': this.voiceNote.toJson(),
        'title': this.title,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
