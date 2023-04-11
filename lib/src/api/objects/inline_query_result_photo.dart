import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a photo
@immutable
class InlineQueryResultPhoto extends InlineQueryResult {
  const InlineQueryResultPhoto({
    required this.id,
    required this.photo,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [photo] Photo
  final Photo photo;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  static const String constructor = 'inlineQueryResultPhoto';

  static InlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultPhoto(
      id: json['id'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'photo': photo.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
