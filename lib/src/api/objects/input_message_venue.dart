import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with information about a venue
@immutable
class InputMessageVenue extends InputMessageContent {
  const InputMessageVenue({
    required this.venue,
  });

  /// [venue] Venue to send
  final Venue venue;

  static const String constructor = 'inputMessageVenue';

  static InputMessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVenue(
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
