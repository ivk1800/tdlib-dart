import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether current user's video is paused
/// Returns [Ok]
@immutable
class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isMyVideoPaused] Pass true if the current user's video is paused
  final bool isMyVideoPaused;

  static const String constructor = 'toggleGroupCallIsMyVideoPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_my_video_paused': isMyVideoPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
