import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Bans users from a group call not bound to a chat; requires
/// groupCall.is_owned. Only the owner of the group call can invite the banned
/// users back
/// Returns [Ok]
@immutable
class BanGroupCallParticipants extends TdFunction {
  const BanGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] Identifiers of group call participants to ban; identifiers of
  /// unknown users from the update updateGroupCallParticipants can be also
  /// passed to the method
  final List<int> userIds;

  static const String constructor = 'banGroupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
