import '../tdapi.dart';

/// Describes a web page preview
class WebPage extends TdObject {
  WebPage(
      {required this.url,
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
      this.animation,
      this.audio,
      this.document,
      this.sticker,
      this.video,
      this.videoNote,
      this.voiceNote,
      required this.instantViewVersion});

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

  /// [animation] Preview of the content as an animation, if available; may be
  /// null
  final Animation? animation;

  /// [audio] Preview of the content as an audio file, if available; may be null
  final Audio? audio;

  /// [document] Preview of the content as a document, if available (currently
  /// only available for small PDF files and ZIP archives); may be null
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

  /// [instantViewVersion] Version of instant view, available for the web page
  /// (currently can be 1 or 2), 0 if none
  final int instantViewVersion;

  static const String CONSTRUCTOR = 'webPage';

  static WebPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebPage(
        url: json['url'],
        displayUrl: json['display_url'],
        type: json['type'],
        siteName: json['site_name'],
        title: json['title'],
        description: FormattedText.fromJson(json['description'])!,
        photo: Photo.fromJson(json['photo']),
        embedUrl: json['embed_url'],
        embedType: json['embed_type'],
        embedWidth: json['embed_width'],
        embedHeight: json['embed_height'],
        duration: json['duration'],
        author: json['author'],
        animation: Animation.fromJson(json['animation']),
        audio: Audio.fromJson(json['audio']),
        document: Document.fromJson(json['document']),
        sticker: Sticker.fromJson(json['sticker']),
        video: Video.fromJson(json['video']),
        videoNote: VideoNote.fromJson(json['video_note']),
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        instantViewVersion: json['instant_view_version']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'display_url': this.displayUrl,
        'type': this.type,
        'site_name': this.siteName,
        'title': this.title,
        'description': this.description.toJson(),
        'photo': this.photo?.toJson(),
        'embed_url': this.embedUrl,
        'embed_type': this.embedType,
        'embed_width': this.embedWidth,
        'embed_height': this.embedHeight,
        'duration': this.duration,
        'author': this.author,
        'animation': this.animation?.toJson(),
        'audio': this.audio?.toJson(),
        'document': this.document?.toJson(),
        'sticker': this.sticker?.toJson(),
        'video': this.video?.toJson(),
        'video_note': this.videoNote?.toJson(),
        'voice_note': this.voiceNote?.toJson(),
        'instant_view_version': this.instantViewVersion,
        '@type': CONSTRUCTOR
      };
}
