import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an audio file. Audio is usually in MP3 or M4A format
@immutable
class Audio extends TdObject {
  const Audio({
    required this.duration,
    required this.title,
    required this.performer,
    required this.fileName,
    required this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    required this.audio,
  });

  /// [duration] Duration of the audio, in seconds; as defined by the sender
  final int duration;

  /// [title] Title of the audio; as defined by the sender
  final String title;

  /// [performer] Performer of the audio; as defined by the sender
  final String performer;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] The MIME type of the file; as defined by the sender
  final String mimeType;

  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be
  /// null
  final Minithumbnail? albumCoverMinithumbnail;

  /// [albumCoverThumbnail] The thumbnail of the album cover in JPEG format; as
  /// defined by the sender. The full size thumbnail is supposed to be extracted
  /// from the downloaded file; may be null
  final Thumbnail? albumCoverThumbnail;

  /// [audio] File containing the audio
  final File audio;

  static const String constructor = 'audio';

  static Audio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Audio(
      duration: json['duration'],
      title: json['title'],
      performer: json['performer'],
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      albumCoverMinithumbnail:
          Minithumbnail.fromJson(json['album_cover_minithumbnail']),
      albumCoverThumbnail: Thumbnail.fromJson(json['album_cover_thumbnail']),
      audio: File.fromJson(json['audio'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'title': title,
        'performer': performer,
        'file_name': fileName,
        'mime_type': mimeType,
        'album_cover_minithumbnail': albumCoverMinithumbnail?.toJson(),
        'album_cover_thumbnail': albumCoverThumbnail?.toJson(),
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
