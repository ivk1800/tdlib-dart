import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about participants of a non-joined group call that is
/// not bound to a chat
/// Returns [GroupCallParticipants]
@immutable
class GetGroupCallParticipants extends TdFunction {
  const GetGroupCallParticipants({
    required this.inputGroupCall,
    required this.limit,
  });

  /// [inputGroupCall] The group call which participants will be returned
  final InputGroupCall inputGroupCall;

  /// [limit] The maximum number of participants to return; must be positive
  final int limit;

  static const String constructor = 'getGroupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'input_group_call': inputGroupCall.toJson(),
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
