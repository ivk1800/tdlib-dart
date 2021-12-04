import '../tdapi.dart';

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
}
