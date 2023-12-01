import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a link preview
@immutable
class WebPage extends TdObject {
  const WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    required this.hasLargeMedia,
    required this.showLargeMedia,
    required this.skipConfirmation,
    required this.showAboveText,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    required this.storySenderChatId,
    required this.storyId,
    required this.instantViewVersion,
  });

  /// [url] Original URL of the link
  final String url;

  /// [displayUrl] URL to display
  final String displayUrl;

  /// [type] Type of the web page. Can be: article, photo, audio, video,
  /// document, profile, app, or something else
  final String type;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// [title] Title of the content
  final String title;

  /// param_[description] Description of the content
  final FormattedText description;

  /// [photo] Image representing the content; may be null
  final Photo? photo;

  /// [embedUrl] URL to show in the embedded preview
  final String embedUrl;

  /// [embedType] MIME type of the embedded preview, (e.g., text/html or
  /// video/mp4)
  final String embedType;

  /// [embedWidth] Width of the embedded preview
  final int embedWidth;

  /// [embedHeight] Height of the embedded preview
  final int embedHeight;

  /// [duration] Duration of the content, in seconds
  final int duration;

  /// [author] Author of the content
  final String author;

  /// [hasLargeMedia] True, if size of media in the preview can be changed
  final bool hasLargeMedia;

  /// [showLargeMedia] True, if large media preview must be shown; otherwise,
  /// the media preview must be shown small and only the first frame must be
  /// shown for videos
  final bool showLargeMedia;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL
  /// confirmation, when opening the URL from the preview, because the URL is
  /// shown in the message text in clear
  final bool skipConfirmation;

  /// [showAboveText] True, if the link preview must be shown above message
  /// text; otherwise, the link preview must be shown below the message text
  final bool showAboveText;

  /// [animation] Preview of the content as an animation, if available; may be
  /// null
  final Animation? animation;

  /// [audio] Preview of the content as an audio file, if available; may be null
  final Audio? audio;

  /// [document] Preview of the content as a document, if available; may be null
  final Document? document;

  /// [sticker] Preview of the content as a sticker for small WEBP files, if
  /// available; may be null
  final Sticker? sticker;

  /// [video] Preview of the content as a video, if available; may be null
  final Video? video;

  /// [videoNote] Preview of the content as a video note, if available; may be
  /// null
  final VideoNote? videoNote;

  /// [voiceNote] Preview of the content as a voice note, if available; may be
  /// null
  final VoiceNote? voiceNote;

  /// [storySenderChatId] The identifier of the sender of the previewed story; 0
  /// if none
  final int storySenderChatId;

  /// [storyId] The identifier of the previewed story; 0 if none
  final int storyId;

  /// [instantViewVersion] Version of web page instant view (currently, can be 1
  /// or 2); 0 if none
  final int instantViewVersion;

  static const String constructor = 'webPage';

  static WebPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebPage(
      url: json['url'] as String,
      displayUrl: json['display_url'] as String,
      type: json['type'] as String,
      siteName: json['site_name'] as String,
      title: json['title'] as String,
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?)!,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      embedUrl: json['embed_url'] as String,
      embedType: json['embed_type'] as String,
      embedWidth: json['embed_width'] as int,
      embedHeight: json['embed_height'] as int,
      duration: json['duration'] as int,
      author: json['author'] as String,
      hasLargeMedia: json['has_large_media'] as bool,
      showLargeMedia: json['show_large_media'] as bool,
      skipConfirmation: json['skip_confirmation'] as bool,
      showAboveText: json['show_above_text'] as bool,
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>?),
      document: Document.fromJson(json['document'] as Map<String, dynamic>?),
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
      videoNote:
          VideoNote.fromJson(json['video_note'] as Map<String, dynamic>?),
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?),
      storySenderChatId: json['story_sender_chat_id'] as int,
      storyId: json['story_id'] as int,
      instantViewVersion: json['instant_view_version'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'display_url': displayUrl,
        'type': type,
        'site_name': siteName,
        'title': title,
        'description': description.toJson(),
        'photo': photo?.toJson(),
        'embed_url': embedUrl,
        'embed_type': embedType,
        'embed_width': embedWidth,
        'embed_height': embedHeight,
        'duration': duration,
        'author': author,
        'has_large_media': hasLargeMedia,
        'show_large_media': showLargeMedia,
        'skip_confirmation': skipConfirmation,
        'show_above_text': showAboveText,
        'animation': animation?.toJson(),
        'audio': audio?.toJson(),
        'document': document?.toJson(),
        'sticker': sticker?.toJson(),
        'video': video?.toJson(),
        'video_note': videoNote?.toJson(),
        'voice_note': voiceNote?.toJson(),
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'instant_view_version': instantViewVersion,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
