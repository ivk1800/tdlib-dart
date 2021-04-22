import '../tdapi.dart';

/// Represents a photo
class InlineQueryResultPhoto extends InlineQueryResult {
  InlineQueryResultPhoto(
      {required this.id,
      required this.photo,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  final String id;

  /// [photo] Photo
  final Photo photo;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  static const String CONSTRUCTOR = 'inlineQueryResultPhoto';

  static InlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultPhoto(
        id: json['id'],
        photo: Photo.fromJson(json['photo'])!,
        title: json['title'],
        description: json['description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'photo': this.photo.toJson(),
        'title': this.title,
        'description': this.description,
        '@type': CONSTRUCTOR
      };
}
