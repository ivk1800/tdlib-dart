import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Handles a push notification. Returns error with code 406 if the push
/// notification is not supported and connection to the server is required to
/// fetch new data. Can be called before authorization
/// Returns [Ok]
@immutable
class ProcessPushNotification extends TdFunction {
  const ProcessPushNotification({
    required this.payload,
  });

  /// [payload] JSON-encoded push notification payload with all fields sent by
  /// the server, and "google.sent_time" and "google.notification.sound" fields
  /// added
  final String payload;

  static const String constructor = 'processPushNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'payload': payload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
