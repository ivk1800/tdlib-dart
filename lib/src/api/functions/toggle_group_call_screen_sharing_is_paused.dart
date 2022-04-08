import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Pauses or unpauses screen sharing in a joined group call
/// Returns [Ok]
@immutable
class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  const ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isPaused] True if screen sharing is paused
  final bool isPaused;

  static const String constructor = 'toggleGroupCallScreenSharingIsPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
