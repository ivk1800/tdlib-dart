import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A user in the chat came within proximity alert range
class MessageProximityAlertTriggered extends MessageContent {
  MessageProximityAlertTriggered(
      {required this.travelerId,
      required this.watcherId,
      required this.distance});

  /// [travelerId] The identifier of a user or chat that triggered the proximity
  /// alert
  final MessageSender travelerId;

  /// [watcherId] The identifier of a user or chat that subscribed for the
  /// proximity alert
  final MessageSender watcherId;

  /// [distance] The distance between the users
  final int distance;

  static const String CONSTRUCTOR = 'messageProximityAlertTriggered';

  static MessageProximityAlertTriggered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProximityAlertTriggered(
        travelerId: MessageSender.fromJson(json['traveler_id'])!,
        watcherId: MessageSender.fromJson(json['watcher_id'])!,
        distance: json['distance']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'traveler_id': this.travelerId.toJson(),
        'watcher_id': this.watcherId.toJson(),
        'distance': this.distance,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
