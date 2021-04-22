import '../tdapi.dart';

/// Contains information about a notification
class Notification extends TdObject {
  Notification(
      {required this.id,
      required this.date,
      required this.isSilent,
      required this.type});

  /// [id] Unique persistent identifier of this notification
  final int id;

  /// [date] Notification date
  final int date;

  /// [isSilent] True, if the notification was initially silent
  final bool isSilent;

  /// [type] Notification type
  final NotificationType type;

  static const String CONSTRUCTOR = 'notification';

  static Notification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Notification(
        id: json['id'],
        date: json['date'],
        isSilent: json['is_silent'],
        type: NotificationType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'date': this.date,
        'is_silent': this.isSilent,
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
