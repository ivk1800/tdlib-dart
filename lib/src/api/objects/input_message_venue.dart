import '../tdapi.dart';

/// A message with information about a venue
class InputMessageVenue extends InputMessageContent {
  InputMessageVenue({required this.venue});

  /// [venue] Venue to send
  final Venue venue;

  static const String CONSTRUCTOR = 'inputMessageVenue';

  static InputMessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVenue(venue: Venue.fromJson(json['venue'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'venue': this.venue.toJson(), '@type': CONSTRUCTOR};
}
