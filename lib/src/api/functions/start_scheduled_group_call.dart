import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Starts a scheduled group call
/// Returns [Ok]
class StartScheduledGroupCall extends TdFunction {
  StartScheduledGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'startScheduledGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
