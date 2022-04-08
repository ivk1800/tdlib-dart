import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents information about a venue
@immutable
class InlineQueryResultVenue extends InlineQueryResult {
  const InlineQueryResultVenue({
    required this.id,
    required this.venue,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultVenue';

  static InlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVenue(
      id: json['id'],
      venue: Venue.fromJson(json['venue'])!,
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'venue': venue.toJson(),
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
