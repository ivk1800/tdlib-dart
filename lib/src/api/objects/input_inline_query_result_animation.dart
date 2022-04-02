import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a link to an animated GIF or an animated (i.e., without sound)
/// H.264/MPEG-4 AVC video
class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  InputInlineQueryResultAnimation(
      {required this.id,
      required this.title,
      required this.thumbnailUrl,
      required this.thumbnailMimeType,
      required this.videoUrl,
      required this.videoMimeType,
      required this.videoDuration,
      required this.videoWidth,
      required this.videoHeight,
      this.replyMarkup,
      required this.inputMessageContent});

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

  static const String CONSTRUCTOR = 'inputInlineQueryResultAnimation';

  static InputInlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAnimation(
        id: json['id'],
        title: json['title'],
        thumbnailUrl: json['thumbnail_url'],
        thumbnailMimeType: json['thumbnail_mime_type'],
        videoUrl: json['video_url'],
        videoMimeType: json['video_mime_type'],
        videoDuration: json['video_duration'],
        videoWidth: json['video_width'],
        videoHeight: json['video_height'],
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
        'thumbnail_url': this.thumbnailUrl,
        'thumbnail_mime_type': this.thumbnailMimeType,
        'video_url': this.videoUrl,
        'video_mime_type': this.videoMimeType,
        'video_duration': this.videoDuration,
        'video_width': this.videoWidth,
        'video_height': this.videoHeight,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
