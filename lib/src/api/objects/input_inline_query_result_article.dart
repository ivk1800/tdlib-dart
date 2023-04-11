import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a link to an article or web page
@immutable
class InputInlineQueryResultArticle extends InputInlineQueryResult {
  const InputInlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

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

  static const String constructor = 'inputInlineQueryResultArticle';

  static InputInlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultArticle(
      id: json['id'] as String,
      url: json['url'] as String,
      hideUrl: json['hide_url'] as bool,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      thumbnailWidth: json['thumbnail_width'] as int,
      thumbnailHeight: json['thumbnail_height'] as int,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
      inputMessageContent: InputMessageContent.fromJson(
          json['input_message_content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'url': url,
        'hide_url': hideUrl,
        'title': title,
        'description': description,
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
