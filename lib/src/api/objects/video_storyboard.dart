import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a storyboard for a video
@immutable
class VideoStoryboard extends TdObject {
  const VideoStoryboard({
    required this.storyboardFile,
    required this.width,
    required this.height,
    required this.mapFile,
  });

  /// [storyboardFile] A JPEG file that contains tiled previews of video
  final File storyboardFile;

  /// [width] Width of a tile
  final int width;

  /// [height] Height of a tile
  final int height;

  /// [mapFile] File that describes mapping of position in the video to a tile
  /// in the JPEG file
  final File mapFile;

  static const String constructor = 'videoStoryboard';

  static VideoStoryboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoStoryboard(
      storyboardFile: File.fromJson(
        json['storyboard_file'] as Map<String, dynamic>?,
      )!,
      width: json['width'] as int,
      height: json['height'] as int,
      mapFile: File.fromJson(json['map_file'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'storyboard_file': storyboardFile.toJson(),
    'width': width,
    'height': height,
    'map_file': mapFile.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
