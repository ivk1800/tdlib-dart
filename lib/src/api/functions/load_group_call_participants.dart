import '../tdapi.dart';

/// Loads more group call participants. The loaded participants will be
/// received through updates. Use the field groupCall.loaded_all_participants
/// to check whether all participants has already been loaded
/// Returns [Ok]
class LoadGroupCallParticipants extends TdFunction {
  LoadGroupCallParticipants({required this.groupCallId, required this.limit});

  /// [groupCallId] Group call identifier. The group call must be previously
  /// received through getGroupCall and must be joined or being joined
  final int groupCallId;

  /// [limit] Maximum number of participants to load
  final int limit;

  static const String CONSTRUCTOR = 'loadGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
