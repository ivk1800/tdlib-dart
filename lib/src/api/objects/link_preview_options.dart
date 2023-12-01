import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used for generation of a link preview
@immutable
class LinkPreviewOptions extends TdObject {
  const LinkPreviewOptions({
    required this.isDisabled,
    required this.url,
    required this.forceSmallMedia,
    required this.forceLargeMedia,
    required this.showAboveText,
  });

  /// [isDisabled] True, if link preview must be disabled
  final bool isDisabled;

  /// [url] URL to use for link preview. If empty, then the first URL found in
  /// the message text will be used
  final String url;

  /// [forceSmallMedia] True, if shown media preview must be small; ignored in
  /// secret chats or if the URL isn't explicitly specified
  final bool forceSmallMedia;

  /// [forceLargeMedia] True, if shown media preview must be large; ignored in
  /// secret chats or if the URL isn't explicitly specified
  final bool forceLargeMedia;

  /// [showAboveText] True, if link preview must be shown above message text;
  /// otherwise, the link preview will be shown below the message text; ignored
  /// in secret chats
  final bool showAboveText;

  static const String constructor = 'linkPreviewOptions';

  static LinkPreviewOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewOptions(
      isDisabled: json['is_disabled'] as bool,
      url: json['url'] as String,
      forceSmallMedia: json['force_small_media'] as bool,
      forceLargeMedia: json['force_large_media'] as bool,
      showAboveText: json['show_above_text'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_disabled': isDisabled,
        'url': url,
        'force_small_media': forceSmallMedia,
        'force_large_media': forceLargeMedia,
        'show_above_text': showAboveText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
