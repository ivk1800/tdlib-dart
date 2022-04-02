import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a point on the map
class InlineQueryResultLocation extends InlineQueryResult {
  InlineQueryResultLocation(
      {required this.id,
      required this.location,
      required this.title,
      this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location location;

  /// [title] Title of the result
  final String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String CONSTRUCTOR = 'inlineQueryResultLocation';

  static InlineQueryResultLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultLocation(
        id: json['id'],
        location: Location.fromJson(json['location'])!,
        title: json['title'],
        thumbnail: Thumbnail.fromJson(json['thumbnail']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'location': this.location.toJson(),
        'title': this.title,
        'thumbnail': this.thumbnail?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
