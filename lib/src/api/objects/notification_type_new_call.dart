import '../tdapi.dart';

/// New call was received
class NotificationTypeNewCall extends NotificationType {
  NotificationTypeNewCall({required this.callId});

  /// [callId] Call identifier
  final int callId;

  static const String CONSTRUCTOR = 'notificationTypeNewCall';

  static NotificationTypeNewCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewCall(callId: json['call_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'call_id': this.callId, '@type': CONSTRUCTOR};
}
