import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New call was received
@immutable
class NotificationTypeNewCall extends NotificationType {
  const NotificationTypeNewCall({
    required this.callId,
  });

  /// [callId] Call identifier
  final int callId;

  static const String constructor = 'notificationTypeNewCall';

  static NotificationTypeNewCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewCall(
      callId: json['call_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
