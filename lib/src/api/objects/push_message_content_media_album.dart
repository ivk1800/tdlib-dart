import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A media album
class PushMessageContentMediaAlbum extends PushMessageContent {
  PushMessageContentMediaAlbum(
      {required this.totalCount,
      required this.hasPhotos,
      required this.hasVideos,
      required this.hasAudios,
      required this.hasDocuments});

  /// [totalCount] Number of messages in the album
  final int totalCount;

  /// [hasPhotos] True, if the album has at least one photo
  final bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video
  final bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  final bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  final bool hasDocuments;

  static const String CONSTRUCTOR = 'pushMessageContentMediaAlbum';

  static PushMessageContentMediaAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMediaAlbum(
        totalCount: json['total_count'],
        hasPhotos: json['has_photos'],
        hasVideos: json['has_videos'],
        hasAudios: json['has_audios'],
        hasDocuments: json['has_documents']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'has_photos': this.hasPhotos,
        'has_videos': this.hasVideos,
        'has_audios': this.hasAudios,
        'has_documents': this.hasDocuments,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
