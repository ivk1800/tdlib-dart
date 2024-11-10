import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an audio file
@immutable
class LinkPreviewTypeExternalAudio extends LinkPreviewType {
  const LinkPreviewTypeExternalAudio({
    required this.url,
    required this.mimeType,
    required this.duration,
  });

  /// [url] URL of the audio file
  final String url;

  /// [mimeType] MIME type of the audio file
  final String mimeType;

  /// [duration] Duration of the audio, in seconds; 0 if unknown
  final int duration;

  static const String constructor = 'linkPreviewTypeExternalAudio';

  static LinkPreviewTypeExternalAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeExternalAudio(
      url: json['url'] as String,
      mimeType: json['mime_type'] as String,
      duration: json['duration'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'mime_type': mimeType,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
