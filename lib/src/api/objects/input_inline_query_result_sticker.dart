import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a link to a WEBP, TGS, or WEBM sticker
@immutable
class InputInlineQueryResultSticker extends InputInlineQueryResult {
  const InputInlineQueryResultSticker({
    required this.id,
    required this.thumbnailUrl,
    required this.stickerUrl,
    required this.stickerWidth,
    required this.stickerHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;

  /// [stickerUrl] The URL of the WEBP, TGS, or WEBM sticker (sticker file size
  /// must not exceed 5MB)
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

  static const String constructor = 'inputInlineQueryResultSticker';

  static InputInlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultSticker(
      id: json['id'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      stickerUrl: json['sticker_url'] as String,
      stickerWidth: json['sticker_width'] as int,
      stickerHeight: json['sticker_height'] as int,
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
        'thumbnail_url': thumbnailUrl,
        'sticker_url': stickerUrl,
        'sticker_width': stickerWidth,
        'sticker_height': stickerHeight,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
