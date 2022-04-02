import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents link to a JPEG image
class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  InputInlineQueryResultPhoto(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required this.photoUrl,
      required this.photoWidth,
      required this.photoHeight,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] URL of the photo thumbnail, if it exists
  final String thumbnailUrl;

  /// [photoUrl] The URL of the JPEG photo (photo size must not exceed 5MB)
  final String photoUrl;

  /// [photoWidth] Width of the photo
  final int photoWidth;

  /// [photoHeight] Height of the photo
  final int photoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessagePhoto,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultPhoto';

  static InputInlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultPhoto(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        thumbnailUrl: json['thumbnail_url'],
        photoUrl: json['photo_url'],
        photoWidth: json['photo_width'],
        photoHeight: json['photo_height'],
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
        'description': this.description,
        'thumbnail_url': this.thumbnailUrl,
        'photo_url': this.photoUrl,
        'photo_width': this.photoWidth,
        'photo_height': this.photoHeight,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
