import '../tdapi.dart';

/// Starts recording of a group call. Requires groupCall.can_be_managed group
/// call flag
/// Returns [Ok]
class StartGroupCallRecording extends TdFunction {
  StartGroupCallRecording({required this.groupCallId, required this.title});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] Group call recording title; 0-64 characters
  final String title;

  static const String CONSTRUCTOR = 'startGroupCallRecording';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'title': this.title,
        '@type': CONSTRUCTOR
      };
}
