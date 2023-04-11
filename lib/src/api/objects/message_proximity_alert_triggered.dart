import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user in the chat came within proximity alert range
@immutable
class MessageProximityAlertTriggered extends MessageContent {
  const MessageProximityAlertTriggered({
    required this.travelerId,
    required this.watcherId,
    required this.distance,
  });

  /// [travelerId] The identifier of a user or chat that triggered the proximity
  /// alert
  final MessageSender travelerId;

  /// [watcherId] The identifier of a user or chat that subscribed for the
  /// proximity alert
  final MessageSender watcherId;

  /// [distance] The distance between the users
  final int distance;

  static const String constructor = 'messageProximityAlertTriggered';

  static MessageProximityAlertTriggered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProximityAlertTriggered(
      travelerId:
          MessageSender.fromJson(json['traveler_id'] as Map<String, dynamic>?)!,
      watcherId:
          MessageSender.fromJson(json['watcher_id'] as Map<String, dynamic>?)!,
      distance: json['distance'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'traveler_id': travelerId.toJson(),
        'watcher_id': watcherId.toJson(),
        'distance': distance,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
