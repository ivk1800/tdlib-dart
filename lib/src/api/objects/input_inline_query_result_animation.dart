import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a link to an animated GIF or an animated (i.e., without sound)
/// H.264/MPEG-4 AVC video
@immutable
class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  const InputInlineQueryResultAnimation({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailMimeType,
    required this.videoUrl,
    required this.videoMimeType,
    required this.videoDuration,
    required this.videoWidth,
    required this.videoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the query result
  final String title;

  /// [thumbnailUrl] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it
  /// exists
  final String thumbnailUrl;

  /// [thumbnailMimeType] MIME type of the video thumbnail. If non-empty, must
  /// be one of "image/jpeg", "image/gif" and "video/mp4"
  final String thumbnailMimeType;

  /// [videoUrl] The URL of the video file (file size must not exceed 1MB)
  final String videoUrl;

  /// [videoMimeType] MIME type of the video file. Must be one of "image/gif"
  /// and "video/mp4"
  final String videoMimeType;

  /// [videoDuration] Duration of the video, in seconds
  final int videoDuration;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageAnimation,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'inputInlineQueryResultAnimation';

  static InputInlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAnimation(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      thumbnailMimeType: json['thumbnail_mime_type'] as String,
      videoUrl: json['video_url'] as String,
      videoMimeType: json['video_mime_type'] as String,
      videoDuration: json['video_duration'] as int,
      videoWidth: json['video_width'] as int,
      videoHeight: json['video_height'] as int,
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
        'title': title,
        'thumbnail_url': thumbnailUrl,
        'thumbnail_mime_type': thumbnailMimeType,
        'video_url': videoUrl,
        'video_mime_type': videoMimeType,
        'video_duration': videoDuration,
        'video_width': videoWidth,
        'video_height': videoHeight,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
