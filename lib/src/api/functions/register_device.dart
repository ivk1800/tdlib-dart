import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Registers the currently used device for receiving push notifications.
/// Returns a globally unique identifier of the push notification subscription
/// Returns [PushReceiverId]
@immutable
class RegisterDevice extends TdFunction {
  const RegisterDevice({
    required this.deviceToken,
    required this.otherUserIds,
  });

  /// [deviceToken] Device token
  final DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the
  /// application
  final List<int> otherUserIds;

  static const String constructor = 'registerDevice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_token': deviceToken.toJson(),
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
