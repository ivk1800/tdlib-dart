import '../tdapi.dart';

/// Discards a group call. Requires groupCall.can_be_managed
/// Returns [Ok]
class DiscardGroupCall extends TdFunction {
  DiscardGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'discardGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
