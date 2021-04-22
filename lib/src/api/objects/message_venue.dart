import '../tdapi.dart';

/// A message with information about a venue
class MessageVenue extends MessageContent {
  MessageVenue({required this.venue});

  /// [venue] The venue description
  final Venue venue;

  static const String CONSTRUCTOR = 'messageVenue';

  static MessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVenue(venue: Venue.fromJson(json['venue'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'venue': this.venue.toJson(), '@type': CONSTRUCTOR};
}
