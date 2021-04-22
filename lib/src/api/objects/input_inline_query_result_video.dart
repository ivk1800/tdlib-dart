import '../tdapi.dart';

/// Represents a link to a page containing an embedded video player or a video
/// file
class InputInlineQueryResultVideo extends InputInlineQueryResult {
  InputInlineQueryResultVideo(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required this.videoUrl,
      required this.mimeType,
      required this.videoWidth,
      required this.videoHeight,
      required this.videoDuration,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;

  /// [videoUrl] URL of the embedded video player or video file
  final String videoUrl;

  /// [mimeType] MIME type of the content of the video URL, only "text/html" or
  /// "video/mp4" are currently supported
  final String mimeType;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [videoDuration] Video duration, in seconds
  final int videoDuration;

  /// [replyMarkup] The message reply markup. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: InputMessageText, InputMessageVideo,
  /// InputMessageLocation, InputMessageVenue or InputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultVideo';

  static InputInlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVideo(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        thumbnailUrl: json['thumbnail_url'],
        videoUrl: json['video_url'],
        mimeType: json['mime_type'],
        videoWidth: json['video_width'],
        videoHeight: json['video_height'],
        videoDuration: json['video_duration'],
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
        'video_url': this.videoUrl,
        'mime_type': this.mimeType,
        'video_width': this.videoWidth,
        'video_height': this.videoHeight,
        'video_duration': this.videoDuration,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
