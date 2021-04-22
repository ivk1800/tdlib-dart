import '../tdapi.dart';

/// Represents a video
class InlineQueryResultVideo extends InlineQueryResult {
  InlineQueryResultVideo(
      {required this.id,
      required this.video,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  final String id;

  /// [video] Video
  final Video video;

  /// [title] Title of the video
  final String title;

  /// param_[description] Description of the video
  final String description;

  static const String CONSTRUCTOR = 'inlineQueryResultVideo';

  static InlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVideo(
        id: json['id'],
        video: Video.fromJson(json['video'])!,
        title: json['title'],
        description: json['description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'video': this.video.toJson(),
        'title': this.title,
        'description': this.description,
        '@type': CONSTRUCTOR
      };
}
