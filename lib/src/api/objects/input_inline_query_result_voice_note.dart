import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a link to an opus-encoded audio file within an OGG container,
/// single channel audio
class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  InputInlineQueryResultVoiceNote(
      {required this.id,
      required this.title,
      required this.voiceNoteUrl,
      required this.voiceNoteDuration,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the voice note
  final String title;

  /// [voiceNoteUrl] The URL of the voice note file
  final String voiceNoteUrl;

  /// [voiceNoteDuration] Duration of the voice note, in seconds
  final int voiceNoteDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageVoiceNote,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultVoiceNote';

  static InputInlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVoiceNote(
        id: json['id'],
        title: json['title'],
        voiceNoteUrl: json['voice_note_url'],
        voiceNoteDuration: json['voice_note_duration'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'voice_note_url': this.voiceNoteUrl,
        'voice_note_duration': this.voiceNoteDuration,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
