import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for public stories from the given venue. For optimal performance,
/// the number of returned stories is chosen by TDLib and can be smaller than
/// the specified limit
/// Returns [FoundStories]
@immutable
class SearchPublicStoriesByVenue extends TdFunction {
  const SearchPublicStoriesByVenue({
    required this.venueProvider,
    required this.venueId,
    required this.offset,
    required this.limit,
  });

  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For
  /// optimal performance, the number of returned stories is chosen by TDLib and
  /// can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicStoriesByVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'venue_provider': venueProvider,
        'venue_id': venueId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
