import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a voice note
@immutable
class InlineQueryResultVoiceNote extends InlineQueryResult {
  const InlineQueryResultVoiceNote({
    required this.id,
    required this.voiceNote,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [voiceNote] Voice note
  final VoiceNote voiceNote;

  /// [title] Title of the voice note
  final String title;

  static const String constructor = 'inlineQueryResultVoiceNote';

  static InlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVoiceNote(
      id: json['id'],
      voiceNote: VoiceNote.fromJson(json['voice_note'])!,
      title: json['title'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'voice_note': voiceNote.toJson(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
