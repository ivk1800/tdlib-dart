import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents information about a venue
class InlineQueryResultVenue extends InlineQueryResult {
  InlineQueryResultVenue(
      {required this.id, required this.venue, this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String CONSTRUCTOR = 'inlineQueryResultVenue';

  static InlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVenue(
        id: json['id'],
        venue: Venue.fromJson(json['venue'])!,
        thumbnail: Thumbnail.fromJson(json['thumbnail']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'venue': this.venue.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
