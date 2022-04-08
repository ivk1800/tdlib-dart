import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a group call
/// Returns [GroupCall]
@immutable
class GetGroupCall extends TdFunction {
  const GetGroupCall({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'getGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
