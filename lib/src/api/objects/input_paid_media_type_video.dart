import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class InputPaidMediaTypeVideo extends InputPaidMediaType {
  const InputPaidMediaTypeVideo({
    this.cover,
    required this.startTimestamp,
    required this.duration,
    required this.supportsStreaming,
  });

  /// [cover] Cover of the video; pass null to skip cover uploading
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  static const String constructor = 'inputPaidMediaTypeVideo';

  static InputPaidMediaTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMediaTypeVideo(
      cover: InputFile.fromJson(json['cover'] as Map<String, dynamic>?),
      startTimestamp: json['start_timestamp'] as int,
      duration: json['duration'] as int,
      supportsStreaming: json['supports_streaming'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    'duration': duration,
    'supports_streaming': supportsStreaming,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
