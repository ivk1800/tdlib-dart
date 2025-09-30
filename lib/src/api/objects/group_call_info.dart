import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a just created or just joined group call
@immutable
class GroupCallInfo extends TdObject {
  const GroupCallInfo({required this.groupCallId, required this.joinPayload});

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [joinPayload] Join response payload for tgcalls; empty if the call isn't
  /// joined
  final String joinPayload;

  static const String constructor = 'groupCallInfo';

  static GroupCallInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallInfo(
      groupCallId: json['group_call_id'] as int,
      joinPayload: json['join_payload'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'join_payload': joinPayload,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
