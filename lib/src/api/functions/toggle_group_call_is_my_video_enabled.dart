import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether current user's video is enabled
/// Returns [Ok]
class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  ToggleGroupCallIsMyVideoEnabled(
      {required this.groupCallId, required this.isMyVideoEnabled});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isMyVideoEnabled] Pass true if the current user's video is enabled
  final bool isMyVideoEnabled;

  static const String CONSTRUCTOR = 'toggleGroupCallIsMyVideoEnabled';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'is_my_video_enabled': this.isMyVideoEnabled,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
