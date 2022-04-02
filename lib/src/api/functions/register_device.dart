import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Registers the currently used device for receiving push notifications.
/// Returns a globally unique identifier of the push notification subscription
/// Returns [PushReceiverId]
class RegisterDevice extends TdFunction {
  RegisterDevice({required this.deviceToken, required this.otherUserIds});

  /// [deviceToken] Device token
  final DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the
  /// application
  final List<int> otherUserIds;

  static const String CONSTRUCTOR = 'registerDevice';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'device_token': this.deviceToken.toJson(),
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
