import '../tdapi.dart';

/// Leaves a group call
/// Returns [Ok]
class LeaveGroupCall extends TdFunction {
  LeaveGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'leaveGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
