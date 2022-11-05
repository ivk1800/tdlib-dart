import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a video note. The video must be equal in width and height,
/// cropped to a circle, and stored in MPEG4 format
@immutable
class VideoNote extends TdObject {
  const VideoNote({
    required this.duration,
    required this.waveform,
    required this.length,
    this.minithumbnail,
    this.thumbnail,
    this.speechRecognitionResult,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [waveform] A waveform representation of the video note's audio in 5-bit
  /// format; may be empty if unknown
  final String waveform;

  /// [length] Video width and height; as defined by the sender
  final int length;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may
  /// be null
  final Thumbnail? thumbnail;

  /// [speechRecognitionResult] Result of speech recognition in the video note;
  /// may be null
  final SpeechRecognitionResult? speechRecognitionResult;

  /// [video] File containing the video
  final File video;

  static const String constructor = 'videoNote';

  static VideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoNote(
      duration: json['duration'],
      waveform: json['waveform'],
      length: json['length'],
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      speechRecognitionResult:
          SpeechRecognitionResult.fromJson(json['speech_recognition_result']),
      video: File.fromJson(json['video'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'waveform': waveform,
        'length': length,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'speech_recognition_result': speechRecognitionResult?.toJson(),
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
