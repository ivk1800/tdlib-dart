import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't be invited because they were banned by the owner of the
/// call and can be invited back only by the owner of the group call
@immutable
class InviteGroupCallParticipantResultUserWasBanned
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserWasBanned();

  static const String constructor =
      'inviteGroupCallParticipantResultUserWasBanned';

  static InviteGroupCallParticipantResultUserWasBanned? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserWasBanned();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
