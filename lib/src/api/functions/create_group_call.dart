import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new group call that isn't bound to a chat
/// Returns [GroupCallInfo]
@immutable
class CreateGroupCall extends TdFunction {
  const CreateGroupCall({this.joinParameters});

  /// [joinParameters] Parameters to join the call; pass null to only create
  /// call link without joining the call
  final GroupCallJoinParameters? joinParameters;

  static const String constructor = 'createGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'join_parameters': joinParameters?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
