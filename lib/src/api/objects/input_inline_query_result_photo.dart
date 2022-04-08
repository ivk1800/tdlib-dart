import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents link to a JPEG image
@immutable
class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  const InputInlineQueryResultPhoto({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.photoUrl,
    required this.photoWidth,
    required this.photoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

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

  static const String constructor = 'inputInlineQueryResultPhoto';

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
        'thumbnail_url': thumbnailUrl,
        'photo_url': photoUrl,
        'photo_width': photoWidth,
        'photo_height': photoHeight,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
