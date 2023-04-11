import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a point on the map
@immutable
class InlineQueryResultLocation extends InlineQueryResult {
  const InlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.title,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location location;

  /// [title] Title of the result
  final String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultLocation';

  static InlineQueryResultLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultLocation(
      id: json['id'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'location': location.toJson(),
        'title': title,
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
