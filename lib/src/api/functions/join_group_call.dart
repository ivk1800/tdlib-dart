import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Joins a group call that is not bound to a chat
/// Returns [GroupCallInfo]
@immutable
class JoinGroupCall extends TdFunction {
  const JoinGroupCall({
    required this.inputGroupCall,
    required this.joinParameters,
  });

  /// [inputGroupCall] The group call to join
  final InputGroupCall inputGroupCall;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  static const String constructor = 'joinGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'input_group_call': inputGroupCall.toJson(),
    'join_parameters': joinParameters.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
