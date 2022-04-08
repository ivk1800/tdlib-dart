import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether current user's video is enabled
/// Returns [Ok]
@immutable
class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  const ToggleGroupCallIsMyVideoEnabled({
    required this.groupCallId,
    required this.isMyVideoEnabled,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isMyVideoEnabled] Pass true if the current user's video is enabled
  final bool isMyVideoEnabled;

  static const String constructor = 'toggleGroupCallIsMyVideoEnabled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_my_video_enabled': isMyVideoEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
