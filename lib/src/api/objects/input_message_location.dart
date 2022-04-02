import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with a location
class InputMessageLocation extends InputMessageContent {
  InputMessageLocation(
      {required this.location,
      required this.livePeriod,
      required this.heading,
      required this.proximityAlertRadius});

  /// [location] Location to be sent
  final Location location;

  /// [livePeriod] Period for which the location can be updated, in seconds;
  /// must be between 60 and 86400 for a live location and 0 otherwise
  final int livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in
  /// degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another
  /// chat member for proximity alerts, in meters (0-100000). Pass 0 if the
  /// notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;

  static const String CONSTRUCTOR = 'inputMessageLocation';

  static InputMessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageLocation(
        location: Location.fromJson(json['location'])!,
        livePeriod: json['live_period'],
        heading: json['heading'],
        proximityAlertRadius: json['proximity_alert_radius']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'location': this.location.toJson(),
        'live_period': this.livePeriod,
        'heading': this.heading,
        'proximity_alert_radius': this.proximityAlertRadius,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
