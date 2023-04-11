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
    required this.externalAlbumCovers,
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
  /// from the downloaded audio file; may be null
  final Thumbnail? albumCoverThumbnail;

  /// [externalAlbumCovers] Album cover variants to use if the downloaded audio
  /// file contains no album cover. Provided thumbnail dimensions are
  /// approximate
  final List<Thumbnail> externalAlbumCovers;

  /// [audio] File containing the audio
  final File audio;

  static const String constructor = 'audio';

  static Audio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Audio(
      duration: json['duration'] as int,
      title: json['title'] as String,
      performer: json['performer'] as String,
      fileName: json['file_name'] as String,
      mimeType: json['mime_type'] as String,
      albumCoverMinithumbnail: Minithumbnail.fromJson(
          json['album_cover_minithumbnail'] as Map<String, dynamic>?),
      albumCoverThumbnail: Thumbnail.fromJson(
          json['album_cover_thumbnail'] as Map<String, dynamic>?),
      externalAlbumCovers: List<Thumbnail>.from(
          ((json['external_album_covers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Thumbnail.fromJson(item))
              .toList()),
      audio: File.fromJson(json['audio'] as Map<String, dynamic>?)!,
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
        'external_album_covers':
            externalAlbumCovers.map((item) => item.toJson()).toList(),
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
