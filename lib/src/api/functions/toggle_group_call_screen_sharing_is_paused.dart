import '../tdapi.dart';

/// Pauses or unpauses screen sharing in a joined group call
/// Returns [Ok]
class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  ToggleGroupCallScreenSharingIsPaused(
      {required this.groupCallId, required this.isPaused});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isPaused] True if screen sharing is paused
  final bool isPaused;

  static const String CONSTRUCTOR = 'toggleGroupCallScreenSharingIsPaused';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'is_paused': this.isPaused,
        '@type': CONSTRUCTOR
      };
}
