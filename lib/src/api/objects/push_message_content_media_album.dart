import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A media album
@immutable
class PushMessageContentMediaAlbum extends PushMessageContent {
  const PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });

  /// [totalCount] Number of messages in the album
  final int totalCount;

  /// [hasPhotos] True, if the album has at least one photo
  final bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video file
  final bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  final bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  final bool hasDocuments;

  static const String constructor = 'pushMessageContentMediaAlbum';

  static PushMessageContentMediaAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMediaAlbum(
      totalCount: json['total_count'] as int,
      hasPhotos: json['has_photos'] as bool,
      hasVideos: json['has_videos'] as bool,
      hasAudios: json['has_audios'] as bool,
      hasDocuments: json['has_documents'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'has_photos': hasPhotos,
        'has_videos': hasVideos,
        'has_audios': hasAudios,
        'has_documents': hasDocuments,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
