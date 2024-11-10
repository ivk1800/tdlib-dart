import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class InputPaidMediaTypeVideo extends InputPaidMediaType {
  const InputPaidMediaTypeVideo({
    required this.duration,
    required this.supportsStreaming,
  });

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
      duration: json['duration'] as int,
      supportsStreaming: json['supports_streaming'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'supports_streaming': supportsStreaming,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
