import '../tdapi.dart';

/// Toggles whether current user's video is paused
/// Returns [Ok]
class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  ToggleGroupCallIsMyVideoPaused(
      {required this.groupCallId, required this.isMyVideoPaused});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isMyVideoPaused] Pass true if the current user's video is paused
  final bool isMyVideoPaused;

  static const String CONSTRUCTOR = 'toggleGroupCallIsMyVideoPaused';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'is_my_video_paused': this.isMyVideoPaused,
        '@type': CONSTRUCTOR
      };
}
