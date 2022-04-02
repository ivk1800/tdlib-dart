import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Revokes invite link for a group call. Requires groupCall.can_be_managed
/// group call flag
/// Returns [Ok]
class RevokeGroupCallInviteLink extends TdFunction {
  RevokeGroupCallInviteLink({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String CONSTRUCTOR = 'revokeGroupCallInviteLink';

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
