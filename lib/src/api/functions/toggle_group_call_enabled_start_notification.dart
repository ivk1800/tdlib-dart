import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the current user will receive a notification when the
/// group call will start; scheduled group calls only
/// Returns [Ok]
@immutable
class ToggleGroupCallEnabledStartNotification extends TdFunction {
  const ToggleGroupCallEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification
  /// setting
  final bool enabledStartNotification;

  static const String constructor = 'toggleGroupCallEnabledStartNotification';

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
