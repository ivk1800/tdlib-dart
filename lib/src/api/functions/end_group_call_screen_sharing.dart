import '../tdapi.dart';

/// Ends screen sharing in a joined group call
/// Returns [Ok]
class EndGroupCallScreenSharing extends TdFunction {
  EndGroupCallScreenSharing({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'endGroupCallScreenSharing';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'group_call_id': this.groupCallId, '@type': CONSTRUCTOR};
}
