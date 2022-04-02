import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a link to a WEBP or TGS sticker
class InputInlineQueryResultSticker extends InputInlineQueryResult {
  InputInlineQueryResultSticker(
      {required this.id,
      required this.thumbnailUrl,
      required this.stickerUrl,
      required this.stickerWidth,
      required this.stickerHeight,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [id] Unique identifier of the query result
  final String id;

  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;

  /// [stickerUrl] The URL of the WEBP or TGS sticker (sticker file size must
  /// not exceed 5MB)
  final String stickerUrl;

  /// [stickerWidth] Width of the sticker
  final int stickerWidth;

  /// [stickerHeight] Height of the sticker
  final int stickerHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageSticker,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultSticker';

  static InputInlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultSticker(
        id: json['id'],
        thumbnailUrl: json['thumbnail_url'],
        stickerUrl: json['sticker_url'],
        stickerWidth: json['sticker_width'],
        stickerHeight: json['sticker_height'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'thumbnail_url': this.thumbnailUrl,
        'sticker_url': this.stickerUrl,
        'sticker_width': this.stickerWidth,
        'sticker_height': this.stickerHeight,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
