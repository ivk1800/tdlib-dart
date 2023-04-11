import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a video
@immutable
class InlineQueryResultVideo extends InlineQueryResult {
  const InlineQueryResultVideo({
    required this.id,
    required this.video,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [video] Video
  final Video video;

  /// [title] Title of the video
  final String title;

  /// param_[description] Description of the video
  final String description;

  static const String constructor = 'inlineQueryResultVideo';

  static InlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVideo(
      id: json['id'] as String,
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'video': video.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
