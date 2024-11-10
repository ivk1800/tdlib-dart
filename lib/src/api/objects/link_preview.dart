import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a link preview
@immutable
class LinkPreview extends TdObject {
  const LinkPreview({
    required this.url,
    required this.displayUrl,
    required this.siteName,
    required this.title,
    required this.description,
    required this.author,
    required this.type,
    required this.hasLargeMedia,
    required this.showLargeMedia,
    required this.showMediaAboveDescription,
    required this.skipConfirmation,
    required this.showAboveText,
    required this.instantViewVersion,
  });

  /// [url] Original URL of the link
  final String url;

  /// [displayUrl] URL to display
  final String displayUrl;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// [title] Title of the content
  final String title;

  /// param_[description] Description of the content
  final FormattedText description;

  /// [author] Author of the content
  final String author;

  /// [type] Type of the link preview
  final LinkPreviewType type;

  /// [hasLargeMedia] True, if size of media in the preview can be changed
  final bool hasLargeMedia;

  /// [showLargeMedia] True, if large media preview must be shown; otherwise,
  /// the media preview must be shown small and only the first frame must be
  /// shown for videos
  final bool showLargeMedia;

  /// [showMediaAboveDescription] True, if media must be shown above link
  /// preview description; otherwise, the media must be shown below the
  /// description
  final bool showMediaAboveDescription;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL
  /// confirmation, when opening the URL from the preview, because the URL is
  /// shown in the message text in clear
  final bool skipConfirmation;

  /// [showAboveText] True, if the link preview must be shown above message
  /// text; otherwise, the link preview must be shown below the message text
  final bool showAboveText;

  /// [instantViewVersion] Version of instant view (currently, can be 1 or 2)
  /// for the web page; 0 if none
  final int instantViewVersion;

  static const String constructor = 'linkPreview';

  static LinkPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreview(
      url: json['url'] as String,
      displayUrl: json['display_url'] as String,
      siteName: json['site_name'] as String,
      title: json['title'] as String,
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?)!,
      author: json['author'] as String,
      type: LinkPreviewType.fromJson(json['type'] as Map<String, dynamic>?)!,
      hasLargeMedia: json['has_large_media'] as bool,
      showLargeMedia: json['show_large_media'] as bool,
      showMediaAboveDescription: json['show_media_above_description'] as bool,
      skipConfirmation: json['skip_confirmation'] as bool,
      showAboveText: json['show_above_text'] as bool,
      instantViewVersion: json['instant_view_version'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'display_url': displayUrl,
        'site_name': siteName,
        'title': title,
        'description': description.toJson(),
        'author': author,
        'type': type.toJson(),
        'has_large_media': hasLargeMedia,
        'show_large_media': showLargeMedia,
        'show_media_above_description': showMediaAboveDescription,
        'skip_confirmation': skipConfirmation,
        'show_above_text': showAboveText,
        'instant_view_version': instantViewVersion,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
