import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a point on the map
@immutable
class InputInlineQueryResultLocation extends InputInlineQueryResult {
  const InputInlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.livePeriod,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location location;

  /// [livePeriod] Amount of time relative to the message sent time until the
  /// location can be updated, in seconds
  final int livePeriod;

  /// [title] Title of the result
  final String title;

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

  static const String constructor = 'inputInlineQueryResultLocation';

  static InputInlineQueryResultLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultLocation(
      id: json['id'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      livePeriod: json['live_period'] as int,
      title: json['title'] as String,
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
        'location': location.toJson(),
        'live_period': livePeriod,
        'title': title,
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
