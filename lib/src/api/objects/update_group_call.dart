import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about a group call was updated
@immutable
class UpdateGroupCall extends Update {
  const UpdateGroupCall({
    required this.groupCall,
  });

  /// [groupCall] New data about a group call
  final GroupCall groupCall;

  static const String constructor = 'updateGroupCall';

  static UpdateGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCall(
      groupCall:
          GroupCall.fromJson(json['group_call'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call': groupCall.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
