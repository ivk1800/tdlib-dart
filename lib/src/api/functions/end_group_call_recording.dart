import '../tdapi.dart';

/// Ends recording of a group call. Requires groupCall.can_be_managed group
/// call flag
/// Returns [Ok]
class EndGroupCallRecording extends TdFunction {
  EndGroupCallRecording({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'endGroupCallRecording';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
