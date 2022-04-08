import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with information about a venue
@immutable
class MessageVenue extends MessageContent {
  const MessageVenue({
    required this.venue,
  });

  /// [venue] The venue description
  final Venue venue;

  static const String constructor = 'messageVenue';

  static MessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVenue(
      venue: Venue.fromJson(json['venue'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'venue': venue.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
