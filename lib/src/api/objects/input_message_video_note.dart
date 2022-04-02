import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A video note message
class InputMessageVideoNote extends InputMessageContent {
  InputMessageVideoNote(
      {required this.videoNote,
      this.thumbnail,
      required this.duration,
      required this.length});

  /// [videoNote] Video note to be sent
  final InputFile videoNote;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  static const String CONSTRUCTOR = 'inputMessageVideoNote';

  static InputMessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideoNote(
        videoNote: InputFile.fromJson(json['video_note'])!,
        thumbnail: InputThumbnail.fromJson(json['thumbnail']),
        duration: json['duration'],
        length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video_note': this.videoNote.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'duration': this.duration,
        'length': this.length,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
