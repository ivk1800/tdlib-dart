import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An audio message
@immutable
class InputMessageAudio extends InputMessageContent {
  const InputMessageAudio({
    required this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    this.caption,
  });

  /// [audio] Audio file to be sent
  final InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album; pass null to
  /// skip thumbnail uploading
  final InputThumbnail? albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the
  /// server
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by
  /// the server
  final String performer;

  /// [caption] Audio caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageAudio';

  static InputMessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAudio(
      audio: InputFile.fromJson(json['audio'] as Map<String, dynamic>?)!,
      albumCoverThumbnail: InputThumbnail.fromJson(
          json['album_cover_thumbnail'] as Map<String, dynamic>?),
      duration: json['duration'] as int,
      title: json['title'] as String,
      performer: json['performer'] as String,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        'album_cover_thumbnail': albumCoverThumbnail?.toJson(),
        'duration': duration,
        'title': title,
        'performer': performer,
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
