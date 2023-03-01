import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a location
@immutable
class MessageLocation extends MessageContent {
  const MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] The location description
  final Location location;

  /// [livePeriod] Time relative to the message send date, for which the
  /// location can be updated, in seconds
  final int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds.
  /// updateMessageContent is not sent when this field changes
  final int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in
  /// degrees; 1-360. If 0 the direction is unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another
  /// chat member for proximity alerts, in meters (0-100000). 0 if the
  /// notification is disabled. Available only to the message sender
  final int proximityAlertRadius;

  static const String constructor = 'messageLocation';

  static MessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLocation(
      location: Location.fromJson(json['location'])!,
      livePeriod: json['live_period'],
      expiresIn: json['expires_in'],
      heading: json['heading'],
      proximityAlertRadius: json['proximity_alert_radius'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'live_period': livePeriod,
        'expires_in': expiresIn,
        'heading': heading,
        'proximity_alert_radius': proximityAlertRadius,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
