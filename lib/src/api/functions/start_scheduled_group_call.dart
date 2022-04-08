import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Starts a scheduled group call
/// Returns [Ok]
@immutable
class StartScheduledGroupCall extends TdFunction {
  const StartScheduledGroupCall({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'startScheduledGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
