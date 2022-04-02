import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes whether there are some pending notification updates. Can be used
/// to prevent application from killing, while there are some pending
/// notifications
class UpdateHavePendingNotifications extends Update {
  UpdateHavePendingNotifications(
      {required this.haveDelayedNotifications,
      required this.haveUnreceivedNotifications});

  /// [haveDelayedNotifications] True, if there are some delayed notification
  /// updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived
  /// notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  static const String CONSTRUCTOR = 'updateHavePendingNotifications';

  static UpdateHavePendingNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateHavePendingNotifications(
        haveDelayedNotifications: json['have_delayed_notifications'],
        haveUnreceivedNotifications: json['have_unreceived_notifications']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'have_delayed_notifications': this.haveDelayedNotifications,
        'have_unreceived_notifications': this.haveUnreceivedNotifications,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
