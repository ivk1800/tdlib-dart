import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note message
@immutable
class InputMessageVideoNote extends InputMessageContent {
  const InputMessageVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
  });

  /// [videoNote] Video note to be sent
  final InputFile videoNote;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  static const String constructor = 'inputMessageVideoNote';

  static InputMessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideoNote(
      videoNote:
          InputFile.fromJson(json['video_note'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      duration: json['duration'] as int,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'duration': duration,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
