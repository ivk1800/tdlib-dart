import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Ends a group call. Requires groupCall.can_be_managed
/// Returns [Ok]
@immutable
class EndGroupCall extends TdFunction {
  const EndGroupCall({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'endGroupCall';

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
