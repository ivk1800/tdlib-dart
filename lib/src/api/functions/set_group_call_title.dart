import '../tdapi.dart';

/// Sets group call title. Requires groupCall.can_be_managed group call flag
/// Returns [Ok]
class SetGroupCallTitle extends TdFunction {
  SetGroupCallTitle({required this.groupCallId, required this.title});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] New group call title; 1-64 characters
  final String title;

  static const String CONSTRUCTOR = 'setGroupCallTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'title': this.title,
        '@type': CONSTRUCTOR
      };
}
