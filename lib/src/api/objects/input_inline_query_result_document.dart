import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a link to a file
@immutable
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  const InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the resulting file
  final String title;

  /// param_[description] Short description of the result, if known
  final String description;

  /// [documentUrl] URL of the file
  final String documentUrl;

  /// [mimeType] MIME type of the file content; only "application/pdf" and
  /// "application/zip" are currently allowed
  final String mimeType;

  /// [thumbnailUrl] The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Width of the thumbnail
  final int thumbnailWidth;

  /// [thumbnailHeight] Height of the thumbnail
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageDocument,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultDocument';

  static InputInlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultDocument(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      documentUrl: json['document_url'],
      mimeType: json['mime_type'],
      thumbnailUrl: json['thumbnail_url'],
      thumbnailWidth: json['thumbnail_width'],
      thumbnailHeight: json['thumbnail_height'],
      replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
      inputMessageContent:
          InputMessageContent.fromJson(json['input_message_content'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'description': description,
        'document_url': documentUrl,
        'mime_type': mimeType,
        'thumbnail_url': thumbnailUrl,
        'thumbnail_width': thumbnailWidth,
        'thumbnail_height': thumbnailHeight,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
