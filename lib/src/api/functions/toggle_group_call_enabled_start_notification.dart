import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether the current user will receive a notification when the
/// group call will start; scheduled group calls only
/// Returns [Ok]
class ToggleGroupCallEnabledStartNotification extends TdFunction {
  ToggleGroupCallEnabledStartNotification(
      {required this.groupCallId, required this.enabledStartNotification});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification
  /// setting
  final bool enabledStartNotification;

  static const String CONSTRUCTOR = 'toggleGroupCallEnabledStartNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'enabled_start_notification': this.enabledStartNotification,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
