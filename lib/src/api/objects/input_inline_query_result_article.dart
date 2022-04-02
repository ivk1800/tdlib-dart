import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a link to an article or web page
class InputInlineQueryResultArticle extends InputInlineQueryResult {
  InputInlineQueryResultArticle(
      {required this.id,
      required this.url,
      required this.hideUrl,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required this.thumbnailWidth,
      required this.thumbnailHeight,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [id] Unique identifier of the query result
  final String id;

  /// [url] URL of the result, if it exists
  final String url;

  /// [hideUrl] True, if the URL must be not shown
  final bool hideUrl;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result
  final String description;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageInvoice,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultArticle';

  static InputInlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultArticle(
        id: json['id'],
        url: json['url'],
        hideUrl: json['hide_url'],
        title: json['title'],
        description: json['description'],
        thumbnailUrl: json['thumbnail_url'],
        thumbnailWidth: json['thumbnail_width'],
        thumbnailHeight: json['thumbnail_height'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'url': this.url,
        'hide_url': this.hideUrl,
        'title': this.title,
        'description': this.description,
        'thumbnail_url': this.thumbnailUrl,
        'thumbnail_width': this.thumbnailWidth,
        'thumbnail_height': this.thumbnailHeight,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
