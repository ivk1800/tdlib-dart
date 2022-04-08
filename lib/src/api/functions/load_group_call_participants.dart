import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads more participants of a group call. The loaded participants will be
/// received through updates. Use the field groupCall.loaded_all_participants
/// to check whether all participants have already been loaded
/// Returns [Ok]
@immutable
class LoadGroupCallParticipants extends TdFunction {
  const LoadGroupCallParticipants({
    required this.groupCallId,
    required this.limit,
  });

  /// [groupCallId] Group call identifier. The group call must be previously
  /// received through getGroupCall and must be joined or being joined
  final int groupCallId;

  /// [limit] The maximum number of participants to load; up to 100
  final int limit;

  static const String constructor = 'loadGroupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
