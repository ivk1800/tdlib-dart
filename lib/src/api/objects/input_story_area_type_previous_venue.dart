import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a venue already added to the story
@immutable
class InputStoryAreaTypePreviousVenue extends InputStoryAreaType {
  const InputStoryAreaTypePreviousVenue({
    required this.venueProvider,
    required this.venueId,
  });

  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;

  static const String constructor = 'inputStoryAreaTypePreviousVenue';

  static InputStoryAreaTypePreviousVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypePreviousVenue(
      venueProvider: json['venue_provider'] as String,
      venueId: json['venue_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'venue_provider': venueProvider,
        'venue_id': venueId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
