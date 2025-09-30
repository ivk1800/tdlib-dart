import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't be invited because they are already a participant of the
/// call
@immutable
class InviteGroupCallParticipantResultUserAlreadyParticipant
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserAlreadyParticipant();

  static const String constructor =
      'inviteGroupCallParticipantResultUserAlreadyParticipant';

  static InviteGroupCallParticipantResultUserAlreadyParticipant? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserAlreadyParticipant();
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
