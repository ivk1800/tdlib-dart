import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the current user will receive a notification when the
/// video chat starts; for scheduled video chats only
/// Returns [Ok]
@immutable
class ToggleVideoChatEnabledStartNotification extends TdFunction {
  const ToggleVideoChatEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification
  /// setting
  final bool enabledStartNotification;

  static const String constructor = 'toggleVideoChatEnabledStartNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'enabled_start_notification': enabledStartNotification,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
