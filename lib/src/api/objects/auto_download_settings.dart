import '../tdapi.dart';

/// Contains auto-download settings
class AutoDownloadSettings extends TdObject {
  AutoDownloadSettings(
      {required this.isAutoDownloadEnabled,
      required this.maxPhotoFileSize,
      required this.maxVideoFileSize,
      required this.maxOtherFileSize,
      required this.videoUploadBitrate,
      required this.preloadLargeVideos,
      required this.preloadNextAudio,
      required this.useLessDataForCalls});

  /// [isAutoDownloadEnabled] True, if the auto-download is enabled
  final bool isAutoDownloadEnabled;

  /// [maxPhotoFileSize] The maximum size of a photo file to be auto-downloaded
  final int maxPhotoFileSize;

  /// [maxVideoFileSize] The maximum size of a video file to be auto-downloaded
  final int maxVideoFileSize;

  /// [maxOtherFileSize] The maximum size of other file types to be
  /// auto-downloaded
  final int maxOtherFileSize;

  /// [videoUploadBitrate] The maximum suggested bitrate for uploaded videos
  final int videoUploadBitrate;

  /// [preloadLargeVideos] True, if the beginning of video files needs to be
  /// preloaded for instant playback
  final bool preloadLargeVideos;

  /// [preloadNextAudio] True, if the next audio track needs to be preloaded
  /// while the user is listening to an audio file
  final bool preloadNextAudio;

  /// [useLessDataForCalls] True, if "use less data for calls" option needs to
  /// be enabled
  final bool useLessDataForCalls;

  static const String CONSTRUCTOR = 'autoDownloadSettings';

  static AutoDownloadSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutoDownloadSettings(
        isAutoDownloadEnabled: json['is_auto_download_enabled'],
        maxPhotoFileSize: json['max_photo_file_size'],
        maxVideoFileSize: json['max_video_file_size'],
        maxOtherFileSize: json['max_other_file_size'],
        videoUploadBitrate: json['video_upload_bitrate'],
        preloadLargeVideos: json['preload_large_videos'],
        preloadNextAudio: json['preload_next_audio'],
        useLessDataForCalls: json['use_less_data_for_calls']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_auto_download_enabled': this.isAutoDownloadEnabled,
        'max_photo_file_size': this.maxPhotoFileSize,
        'max_video_file_size': this.maxVideoFileSize,
        'max_other_file_size': this.maxOtherFileSize,
        'video_upload_bitrate': this.videoUploadBitrate,
        'preload_large_videos': this.preloadLargeVideos,
        'preload_next_audio': this.preloadNextAudio,
        'use_less_data_for_calls': this.useLessDataForCalls,
        '@type': CONSTRUCTOR
      };
}
