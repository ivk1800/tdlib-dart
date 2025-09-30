import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call was ended because it has been upgraded to a group call
@immutable
class CallDiscardReasonUpgradeToGroupCall extends CallDiscardReason {
  const CallDiscardReasonUpgradeToGroupCall({required this.inviteLink});

  /// [inviteLink] Invite link for the group call
  final String inviteLink;

  static const String constructor = 'callDiscardReasonUpgradeToGroupCall';

  static CallDiscardReasonUpgradeToGroupCall? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CallDiscardReasonUpgradeToGroupCall(
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
